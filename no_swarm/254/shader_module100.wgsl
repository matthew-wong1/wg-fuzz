struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<i32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true));

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, true, false), 21869u, vec4<i32>(2147483647i, 12988i, -13181i, 45707i), vec2<bool>(false, true), 848f);

var<private> global2: array<u32, 12> = array<u32, 12>(62259u, 15826u, 1u, 320u, 0u, 0u, 1u, 4294967295u, 31461u, 19270u, 4294967295u, 41974u);

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = ~(-_wgslsmith_sub_i32(countOneBits(-12160i), 15862i));
    global0 = array<vec4<bool>, 19>();
    var var_1 = arg_1;
    var var_2 = -512f;
    var var_3 = Struct_2(-firstLeadingBit(abs(~global1.c.wwx)), 4294967295u, ~8394u, Struct_1(!arg_1.a, ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.c.x, 4294967295u, 4294967295u), ~arg_1.b), _wgslsmith_add_vec4_i32(~(~vec4<i32>(var_1.c.x, -16272i, 22482i, -2147483647i)), vec4<i32>(_wgslsmith_sub_i32(25184i, arg_1.c.x), 0i, _wgslsmith_dot_vec4_i32(global1.c, vec4<i32>(var_1.c.x, -2147483647i, 19203i, 1i)), countOneBits(arg_1.c.x))), select(select(vec2<bool>(false, false), vec2<bool>(true, var_1.d.x), global1.d), vec2<bool>(global1.d.x, global3.x), select(select(vec2<bool>(true, arg_1.a.x), vec2<bool>(false, false), false), !vec2<bool>(arg_1.d.x, true), select(var_1.a.xx, vec2<bool>(arg_1.a.x, var_1.d.x), arg_1.d))), -831f));
    return 10731u;
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    global2 = array<u32, 12>();
    var var_0 = Struct_3(abs(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.e, global1.e, global1.e)))), Struct_1(vec3<bool>(global1.a.x, true, false), _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global1.b, 12u)], 51147u, 3693u), select(vec4<i32>(5992i, 0i, arg_1.x, 15066i), vec4<i32>(u_input.b, -1i, arg_1.x, global1.c.x), vec4<bool>(false, arg_0, global3.x, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), true), -838f))), Struct_2(_wgslsmith_clamp_vec3_i32(arg_1, countOneBits(global1.c.xyy), firstLeadingBit(vec3<i32>(u_input.b, arg_1.x, u_input.b))) ^ abs(arg_1), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(reverseBits(1u), 12u)] ^ countOneBits(global2[_wgslsmith_index_u32(u_input.c.x, 12u)]), _wgslsmith_mod_u32(func_3(vec3<f32>(-963f, -2033f, global1.e), Struct_1(global1.a, arg_2, global1.c, global3.yz, global1.e)), select(u_input.c.x, u_input.c.x, global3.x))), global1.b << (countOneBits(_wgslsmith_clamp_u32(82052u, global2[_wgslsmith_index_u32(arg_2, 12u)], arg_2)) % 32u), Struct_1(select(vec3<bool>(true, true, true), global1.a, select(global1.a, vec3<bool>(false, true, global3.x), true)), ~(33299u | u_input.c.x), vec4<i32>(23695i, -21795i, u_input.b, arg_1.x), vec2<bool>(global3.x, false), 201f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(736f - 624f) + _wgslsmith_f_op_f32(abs(-953f))), -1140f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.e)) - _wgslsmith_f_op_f32(abs(global1.e))), -1106f))));
    global0 = array<vec4<bool>, 19>();
    var var_1 = Struct_2(-global1.c.yxx ^ firstLeadingBit(-vec3<i32>(2147483647i, u_input.a.x, 22395i)), select(var_0.b.d.b ^ ~global2[_wgslsmith_index_u32(~0u, 12u)], 0u, _wgslsmith_div_i32(~0i, -1i) == (-57014i >> (u_input.c.x % 32u))), arg_2, Struct_1(global1.a, _wgslsmith_add_u32(u_input.c.x, ~global2[_wgslsmith_index_u32(global1.b, 12u)]) | _wgslsmith_dot_vec2_u32(u_input.c.xy, ~vec2<u32>(87612u, u_input.c.x)), reverseBits(global1.c), var_0.b.d.a.yz, _wgslsmith_f_op_f32(global1.e * _wgslsmith_f_op_f32(round(1308f)))));
    let var_2 = !(!var_0.b.d.d);
    return Struct_1(var_0.b.d.a, countOneBits(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(4294967295u, 12u)], _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(0u, 12u)], u_input.c.x, 0u))) << ((1u << (_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.c.x), u_input.c.yy ^ u_input.c.xy) % 32u)) % 32u), firstLeadingBit(~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.a.x, -63966i), arg_1.yz), -1i, 1i, var_0.b.a.x >> (var_1.c % 32u))), var_2, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e, 238f) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(step(global1.e, global1.e))), 304f))));
    global2 = array<u32, 12>();
    let var_1 = Struct_2(abs(reverseBits(-_wgslsmith_mod_vec3_i32(global1.c.xzz, vec3<i32>(u_input.b, u_input.b, global1.c.x)))), ~71873u, ~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.b, u_input.c.x), 12u)], 12u)] << (~u_input.c.x % 32u)), func_2(global1.d.x, -((global1.c.wwz >> (vec3<u32>(19216u, 1u, 1u) % vec3<u32>(32u))) ^ vec3<i32>(global1.c.x, 5476i, global1.c.x)), countOneBits(_wgslsmith_add_u32(1u, _wgslsmith_mod_u32(global1.b, 3307u)))));
    global2 = array<u32, 12>();
    var var_2 = ~(~1u);
    return global3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = !select(!select(select(vec3<bool>(false, global3.x, global3.x), global1.a, global1.a.x), select(global1.a, global1.a, true), any(global1.a.zx)), vec3<bool>(true, !(!global3.x), any(!global1.a)), vec3<bool>(func_1(), !(!global1.a.x), true));
    global0 = array<vec4<bool>, 19>();
    var var_0 = vec3<u32>(countOneBits(abs(1u)), 21529u, 5852u);
    var var_1 = 2147483647i;
    var_1 = _wgslsmith_dot_vec3_i32(~global1.c.zzy, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -58537i, min(u_input.a.x, global1.c.x), u_input.b, ~u_input.a.x), max(global1.c ^ vec4<i32>(u_input.b, global1.c.x, -2147483647i, global1.c.x), -vec4<i32>(-1i, 24409i, -7270i, -1i))), _wgslsmith_mod_i32(-global1.c.x ^ u_input.a.x, global1.c.x | abs(-1i)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(global1.c.yxz, _wgslsmith_mod_vec3_i32(vec3<i32>(global1.c.x, 1i, global1.c.x), vec3<i32>(-2147483647i, -2147483647i, global1.c.x))), -vec3<i32>(-7747i, 44608i, global1.c.x))));
    var var_2 = min(u_input.c.x, _wgslsmith_mod_u32(max(0u, 33091u) << (func_3(vec3<f32>(671f, global1.e, global1.e), Struct_1(global1.a, u_input.c.x, global1.c, vec2<bool>(global1.a.x, global3.x), 197f)) % 32u), 27329u) | (var_0.x >> (select(46082u, _wgslsmith_clamp_u32(1u, 26688u, 88876u), !global1.a.x) % 32u)));
    var var_3 = global1.a;
    global0 = array<vec4<bool>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e + -1470f)))), u_input.a, ~vec2<u32>(~u_input.c.x, _wgslsmith_add_u32(1u, var_0.x)));
}

