struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

var<private> global1: vec4<f32>;

var<private> global2: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_2(global2.c.a, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u & global2.a.a.x, firstTrailingBit(u_input.d.x)), arg_0.a.a.yz)), ~arg_0.a.a.x, reverseBits(arg_0.c.d));
    global0 = array<i32, 25>();
    var var_1 = var_0.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.zyz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(sign(212f)), _wgslsmith_f_op_f32(sign(3659f))))));
    let var_3 = Struct_4(Struct_2(var_0.a, _wgslsmith_add_u32(~_wgslsmith_add_u32(arg_0.a.a.x, 1u), ~_wgslsmith_clamp_u32(global2.a.a.x, var_1.a.x, 2667u)), 1u, var_0.d), vec2<f32>(arg_0.b, _wgslsmith_div_f32(arg_0.a.c.x, global2.a.c.x)), _wgslsmith_div_i32(_wgslsmith_div_i32(var_1.d, _wgslsmith_add_i32(-2147483647i >> (1u % 32u), select(arg_0.c.d.x, global2.c.d.x, false))), firstLeadingBit(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.b, global0[_wgslsmith_index_u32(0u, 25u)], -4200i), vec3<i32>(global0[_wgslsmith_index_u32(var_0.c, 25u)], global2.c.a.b, 33355i))))), Struct_1(_wgslsmith_clamp_vec4_u32(~min(var_0.a.a, vec4<u32>(var_1.a.x, arg_0.d.x, 4294967295u, 4379u)), firstLeadingBit(vec4<u32>(u_input.d.x, arg_0.c.a.a.x, 4294967295u, 5910u)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b, u_input.a, 0u, 0u), global2.a.a), u_input.d & vec4<u32>(u_input.d.x, arg_0.d.x, arg_0.d.x, 60232u))), _wgslsmith_dot_vec3_i32(max(vec3<i32>(0i, var_1.b, 0i) >> (vec3<u32>(0u, arg_0.a.a.x, var_0.b) % vec3<u32>(32u)), global2.c.d), global2.c.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-168f, var_0.a.c.x) - global2.c.a.c) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1809f, global1.x))) + vec2<f32>(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_add_i32(var_0.d.x, -22073i)));
    return global2.a.c.x;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = true;
    var var_1 = Struct_3(Struct_1(select(firstTrailingBit(~vec4<u32>(4294967295u, u_input.d.x, arg_2.a.x, 0u)), vec4<u32>(~global2.c.b, ~4294967295u, 4294967295u, _wgslsmith_add_u32(0u, global2.a.a.x)), vec4<bool>(any(vec3<bool>(false, false, true)), global2.d.x != 1u, true, true)), global0[_wgslsmith_index_u32(~u_input.d.x, 25u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global2.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1226f, arg_2.c.x))), arg_2.b), -315f, global2.c, _wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, countOneBits(abs(~u_input.d))));
    var var_2 = global2.c.a;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(700f))), _wgslsmith_f_op_f32(min(global2.a.c.x, _wgslsmith_f_op_f32(-448f * -2291f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-696f + global2.c.a.c.x))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1105f, arg_2.c.x, arg_2.c.x, global1.x))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(196f, 1209f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) - 616f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.x - arg_2.c.x) - 774f)), vec4<f32>(global2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2.c.x, global2.a.c.x, false)), _wgslsmith_f_op_f32(249f - -663f)), _wgslsmith_f_op_f32(func_3(Struct_3(arg_2, -323f, var_1.c, vec4<u32>(u_input.d.x, arg_1, var_2.a.x, 4294967295u)))), -533f), vec4<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), any(vec2<bool>(true, true)), !any(vec2<bool>(false, true))))));
    var_2 = var_1.c.a;
    return global2.c.a;
}

fn func_4(arg_0: Struct_1) -> Struct_4 {
    var var_0 = true;
    var var_1 = Struct_3(arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c.a.c.x, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(arg_0, arg_0.c.x, Struct_2(arg_0, 85879u, u_input.d.x, vec3<i32>(48826i, global2.a.b, global2.a.b)), global2.c.a.a))) - _wgslsmith_f_op_f32(f32(-1f) * -657f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + global2.c.a.c.x) + global1.x))), any(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false))))), Struct_2(func_2(_wgslsmith_clamp_u32(1u, u_input.a, 17494u) << (arg_0.a.x % 32u), 41739u | (4294967295u & global2.c.a.a.x), func_2(max(arg_0.a.x, global2.c.b), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2.c.b, 0u), u_input.d.zzz), arg_0)), (34362u ^ arg_0.a.x) & ~arg_0.a.x, ~u_input.a, select(global2.c.d, -_wgslsmith_div_vec3_i32(global2.c.d, global2.c.d), true)), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global2.a.a.x, global2.c.a.a.x, u_input.a), vec4<u32>(4294967295u, arg_0.a.x, 4294967295u, 1u))));
    global0 = array<i32, 25>();
    let var_2 = select(select(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), false)), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, true, false))), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), true), !vec4<bool>(true, all(vec2<bool>(true, false)), any(vec4<bool>(false, true, true, false)), true), select(_wgslsmith_f_op_f32(-arg_0.c.x) < _wgslsmith_f_op_f32(-1268f - arg_0.c.x), !any(vec4<bool>(true, true, false, true)), false)), vec4<bool>(false, select(false, any(vec4<bool>(true, true, false, true)), true), false, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))));
    let var_3 = func_2(~(~max(global2.a.a.x, 1u)), 0u, Struct_1(arg_0.a, firstTrailingBit(_wgslsmith_add_i32(global2.a.d, arg_0.b) >> (u_input.d.x % 32u)), global1.yz, global0[_wgslsmith_index_u32(arg_0.a.x, 25u)]));
    return Struct_4(Struct_2(var_1.c.a, 1174u, ~_wgslsmith_mod_u32(arg_0.a.x, var_1.a.a.x << (38306u % 32u)), vec3<i32>(1i, _wgslsmith_mod_i32(abs(53605i), _wgslsmith_sub_i32(2147483647i, arg_0.d)), 1i)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(var_1.c.a.c)))), var_3.d, func_2(23799u, firstLeadingBit(~max(var_3.a.x, 1u)), func_2(global2.c.c, countOneBits(global2.c.c & u_input.a), arg_0)));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: f32) -> Struct_3 {
    var var_0 = func_4(func_2(~(reverseBits(89641u) | u_input.a), reverseBits(global2.d.x), global2.c.a));
    var var_1 = func_4(global2.c.a);
    global2 = Struct_3(func_4(func_2(9586u, min(1u, u_input.d.x) ^ (global2.a.a.x | 1u), var_0.d)).a.a, func_2(1u, _wgslsmith_sub_u32(u_input.a, abs(abs(var_0.a.b))), Struct_1(vec4<u32>(global2.d.x, var_1.d.a.x, 21740u, min(0u, 37145u)), firstLeadingBit(var_1.c) >> (101536u % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -332f)), var_0.d.d)).c.x, global2.c, countOneBits(select(vec4<u32>(0u, global2.c.a.a.x, 40506u, var_0.d.a.x), ~vec4<u32>(28104u, var_1.d.a.x, 4294967295u, 0u), arg_1.x) >> (vec4<u32>(44478u, global2.d.x, var_1.a.a.a.x, _wgslsmith_mult_u32(u_input.a, 4294967295u)) % vec4<u32>(32u))));
    var_0 = Struct_4(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-1836f * 863f), _wgslsmith_f_op_f32(-152f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a.c.x + 740f)))), -abs(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_1.a.a.d, 0i), 1i)), Struct_1(_wgslsmith_sub_vec4_u32(min(global2.c.a.a, firstTrailingBit(u_input.d)), func_2(0u, global2.a.a.x, Struct_1(vec4<u32>(var_1.a.a.a.x, 1u, var_0.d.a.x, var_1.a.a.a.x), 2147483647i, vec2<f32>(-392f, -662f), 46180i)).a | func_4(global2.c.a).a.a.a), _wgslsmith_clamp_i32(~_wgslsmith_add_i32(var_0.a.d.x, var_0.a.a.b), _wgslsmith_sub_i32(u_input.c, -var_1.d.d), var_1.c), _wgslsmith_f_op_vec2_f32(-global1.wy), _wgslsmith_clamp_i32(u_input.b, func_2(4294967295u, var_0.a.b, global2.a).d << (var_1.d.a.x % 32u), firstLeadingBit(_wgslsmith_mod_i32(global2.a.d, global0[_wgslsmith_index_u32(30989u, 25u)])))));
    return Struct_3(var_1.a.a, -1242f, var_1.a, abs(vec4<u32>(var_0.a.b, ~_wgslsmith_mod_u32(1u, global2.a.a.x), 7488u, ~29410u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(743f)), 103f), global2.b), vec2<bool>(true, true), 199f);
    var var_0 = max(~(~_wgslsmith_sub_u32(88603u, 1u)), min(~(u_input.a >> (1u % 32u)), firstLeadingBit(func_1(global1.x, vec2<bool>(true, true), global2.a.c.x).a.a.x)));
    let var_1 = firstLeadingBit(min(min(-vec4<i32>(-2147483647i, global2.c.a.b, u_input.b, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(-27825i, global0[_wgslsmith_index_u32(21594u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], u_input.b) >> (global2.c.a.a % vec4<u32>(32u)), abs(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 25u)], -1i, global0[_wgslsmith_index_u32(global2.c.a.a.x, 25u)], -662i)))), _wgslsmith_sub_vec4_i32(reverseBits(select(vec4<i32>(u_input.b, global2.a.b, global2.a.d, global2.c.a.b), vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(u_input.a, 25u)], 52743i, 2147483647i), vec4<bool>(false, true, true, true))), vec4<i32>(_wgslsmith_add_i32(-2147483647i, 0i), i32(-1i) * -3484i, i32(-1i) * -2147483647i, 1i))));
    var var_2 = vec2<u32>(4294967295u, 1u);
    var_0 = ~func_2(1u, 1u, Struct_1(global2.a.a, global0[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.yx - vec2<f32>(global2.c.a.c.x, -609f)), _wgslsmith_f_op_vec2_f32(-global1.yz)), func_1(global2.c.a.c.x, vec2<bool>(true, false), -1457f).c.a.d)).a.x;
    let var_3 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.x, 2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(36274i, u_input.b), global2.c.d.xz)), ~1i), -var_1.x, ~firstLeadingBit(_wgslsmith_mod_i32(0i, _wgslsmith_sub_i32(u_input.b, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.a.c);
}

