struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27>;

var<private> global1: array<u32, 9>;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> u32 {
    var var_0 = vec2<bool>(arg_0.b.d, !(-286f > arg_0.c));
    var var_1 = arg_0;
    let var_2 = arg_0;
    var var_3 = vec4<u32>(var_2.b.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~firstTrailingBit(arg_0.b.a.x), 29606u), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(arg_1, ~vec2<u32>(var_1.b.a.x, 3154u)), abs(var_1.b.a.zx))), firstTrailingBit(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(var_2.b.a.x, 9u)] << (arg_0.b.a.x % 32u), ~1u) & vec3<u32>(_wgslsmith_add_u32(var_1.b.a.x, arg_0.b.a.x), ~arg_1.x, ~14725u), vec3<u32>(~37343u | _wgslsmith_clamp_u32(arg_0.b.a.x, var_1.b.a.x, arg_1.x), ~abs(0u), 0u)));
    let var_4 = vec3<bool>((select(true, var_0.x, var_0.x) && true) | !var_2.b.d, false, !(firstTrailingBit(arg_1.x) >= global1[_wgslsmith_index_u32(_wgslsmith_add_u32(select(38027u, var_1.b.a.x, var_1.b.e), arg_0.b.a.x), 9u)]));
    return 6978u;
}

fn func_2() -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(2128f, 142f, 1707f, 860f) - vec4<f32>(-161f, -304f, 1000f, -1971f)), vec4<f32>(836f, -2284f, -269f, -1185f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-329f, -1130f, -484f, 734f), vec4<f32>(-1042f, 703f, 387f, -2651f), vec4<bool>(global2.x, global2.x, true, global2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1043f, 457f, 612f, 939f))))), _wgslsmith_sub_vec2_i32(~vec2<i32>(38982i, 7313i) << (vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, global1[_wgslsmith_index_u32(38463u, 9u)]), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)) % vec2<u32>(32u)), vec2<i32>(-2147483647i, _wgslsmith_mult_i32(2500i, firstTrailingBit(40836i)))));
    var var_1 = !(func_3(Struct_2(_wgslsmith_f_op_f32(exp2(var_0.a.x)), Struct_1(u_input.a.ywx, vec2<i32>(var_0.b.x, -2147483647i), vec4<bool>(global2.x, global2.x, true, global2.x), true, global2.x), var_0.a.x), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.zz, u_input.a.yw), ~u_input.a.wz)) > _wgslsmith_add_u32(0u | select(u_input.a.x, 19675u, true), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 0u, 43967u), abs(vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(47919u, 9u)])))));
    let var_2 = Struct_1(~_wgslsmith_clamp_vec3_u32(u_input.a.wwx, _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 0u), _wgslsmith_mult_vec3_u32(u_input.a.wxw, u_input.a.zwz)), u_input.a.xyz), -_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(var_0.b.x, var_0.b.x) & var_0.b), reverseBits(firstTrailingBit(var_0.b))), vec4<bool>(true, 1i <= var_0.b.x, global2.x, !all(vec4<bool>(true, global2.x, global2.x, false))), any(!select(select(vec2<bool>(true, false), vec2<bool>(true, global2.x), vec2<bool>(global2.x, global2.x)), vec2<bool>(global2.x, false), vec2<bool>(true, false))), _wgslsmith_dot_vec2_u32(vec2<u32>(24095u, ~1u), min(vec2<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 9u)]), vec2<u32>(4294967295u, 0u))) <= _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_add_u32(~u_input.a.x, 1u)));
    let var_3 = Struct_2(var_0.a.x, Struct_1(firstLeadingBit(~var_2.a | ~u_input.a.yzz), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, abs(-1i)), -vec2<i32>(var_0.b.x, -2147483647i), abs(var_0.b & var_0.b)), select(!vec4<bool>(true, false, var_2.d, true), select(!var_2.c, !vec4<bool>(true, var_2.e, var_2.d, global2.x), global2.x), !select(var_2.c, var_2.c, var_2.c)), true, global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, var_0.a.x)))));
    let var_4 = vec4<u32>(_wgslsmith_clamp_u32(0u, _wgslsmith_div_u32(reverseBits(6155u), ~1u) << (firstLeadingBit(4294967295u) % 32u), abs(~countOneBits(var_3.b.a.x))), _wgslsmith_add_u32(firstTrailingBit(~4294967295u), ~48649u) & _wgslsmith_dot_vec4_u32(u_input.a, ~u_input.a), reverseBits(var_2.a.x), countOneBits(20153u));
    return 1433u;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~global1[_wgslsmith_index_u32(u_input.a.x, 9u)], ~0u, u_input.a.x), vec3<u32>(1u, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], 9u)], global1[_wgslsmith_index_u32(u_input.a.x, 9u)]), ~4294967295u)), 5433u), max(17366u, ~max(max(48403u, 0u), ~1u)), func_2() >> (~(u_input.a.x | 25856u) % 32u));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(707f, arg_1.x, true)))), arg_1.x)) > arg_1.x;
    let var_2 = arg_1.xz;
    let var_3 = !vec3<bool>(any(vec4<bool>(any(vec3<bool>(arg_2, arg_2, true)), all(vec2<bool>(arg_2, false)), any(vec2<bool>(global2.x, global2.x)), !arg_2)), global2.x, arg_2);
    var var_4 = Struct_2(-1000f, Struct_1(~((vec3<u32>(27941u, 10325u, 1u) & vec3<u32>(10648u, 15440u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], 9u)])) | u_input.a.xyz), _wgslsmith_mod_vec2_i32(vec2<i32>(1i | arg_0.x, -1i | arg_0.x), vec2<i32>(-1i) * -arg_0.yx), !vec4<bool>(4294967295u > u_input.a.x, false, false, true), any(select(var_3, select(var_3, vec3<bool>(false, false, arg_2), global2.x), vec3<bool>(global2.x, true, false))), arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(264f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1104f)) - _wgslsmith_f_op_f32(ceil(-102f)))) - _wgslsmith_f_op_f32(sign(arg_1.x))));
    return var_4.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<i32>(reverseBits(_wgslsmith_mult_i32(-37425i << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 9u)] % 32u), ~0i)), _wgslsmith_mult_i32(~1i, -1i), max(2147483647i, 2147483647i)), vec3<f32>(-868f, _wgslsmith_f_op_f32(161f * _wgslsmith_f_op_f32(sign(-282f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -512f)))))), global2.x);
    global0 = array<Struct_3, 27>();
    let var_1 = 0u;
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(-1000f, -503f), 251f)));
    global1 = array<u32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<u32>(26535u, func_3(Struct_2(var_2.x, Struct_1(vec3<u32>(u_input.a.x, 0u, 0u), vec2<i32>(0i, var_0.b.x), vec4<bool>(false, global2.x, true, false), false, true), var_2.x), select(u_input.a.yx, var_0.a.xx, false)), var_0.a.x >> (global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.a.x, 1u, 1u), 9u)] % 32u), 20979u)));
}

