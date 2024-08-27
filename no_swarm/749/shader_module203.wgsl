struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(65194u, 4294967295u, 30877u));

var<private> global1: i32;

var<private> global2: vec3<f32>;

var<private> global3: array<vec3<bool>, 18>;

var<private> global4: array<u32, 31> = array<u32, 31>(0u, 5288u, 22142u, 38327u, 4294967295u, 5862u, 0u, 0u, 18490u, 1u, 18784u, 1u, 0u, 49470u, 42362u, 48205u, 53144u, 3545u, 43481u, 7716u, 14823u, 25018u, 4294967295u, 4294967295u, 1u, 4350u, 56328u, 1u, 45960u, 59303u, 0u);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<f32>) -> vec2<bool> {
    let var_0 = all(select(vec4<bool>(!select(false, true, arg_0.d.x), true, arg_0.d.x, true), select(vec4<bool>(arg_0.d.x, global4[_wgslsmith_index_u32(u_input.b, 31u)] != 52348u, true, arg_0.d.x | arg_0.d.x), select(vec4<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x, true), vec4<bool>(true, false, arg_0.d.x, false), vec4<bool>(true, false, true, arg_0.d.x)), vec4<bool>(any(vec3<bool>(true, true, arg_0.d.x)), any(vec2<bool>(true, arg_0.d.x)), !arg_0.d.x, true)), arg_0.d.x));
    global3 = array<vec3<bool>, 18>();
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_2 * vec2<f32>(-978f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1428f * arg_2.x) * _wgslsmith_f_op_f32(ceil(arg_0.c)))))));
    let var_2 = ~arg_1.x;
    var var_3 = arg_0;
    return !(!select(arg_0.d, !var_3.d, vec2<bool>(arg_0.d.x, any(vec2<bool>(true, var_0)))));
}

fn func_2() -> vec2<u32> {
    let var_0 = false == (global4[_wgslsmith_index_u32(max(1u, 77917u), 31u)] > 43166u);
    let var_1 = Struct_1(u_input.a, abs(u_input.a.ywy), _wgslsmith_f_op_f32(global2.x + -1000f), func_3(Struct_1(~vec4<u32>(2533u, 60254u, u_input.b, 0u), vec3<u32>(1u, ~u_input.b, firstLeadingBit(103085u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1000f) - _wgslsmith_f_op_f32(1372f - 567f)), !select(vec2<bool>(var_0, false), vec2<bool>(var_0, false), vec2<bool>(var_0, var_0))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 31u)], 31u)], 4294967295u, u_input.b, global4[_wgslsmith_index_u32(9136u, 31u)]) ^ u_input.a, ~vec4<u32>(3569u, u_input.b, u_input.a.x, 68875u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.x, global2.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -485f))))));
    var var_2 = ~vec2<u32>(u_input.b, var_1.a.x);
    var var_3 = Struct_2(var_1.d.x, var_1, u_input.c.zz);
    var_2 = ~vec2<u32>(869u, firstTrailingBit(~(var_1.b.x | 70716u)));
    return ~(~(~(~(~vec2<u32>(var_3.b.a.x, 56405u)))));
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(-890f)));
    global1 = -(max(~u_input.c.x, u_input.c.x | ~u_input.c.x) & 0i);
    var var_1 = ~abs(func_2());
    let var_2 = Struct_2(any(vec4<bool>(true, true, true, true)) == any(vec3<bool>(true, any(vec2<bool>(false, false)), true)), Struct_1(abs(u_input.a), vec3<u32>(firstLeadingBit(var_1.x & 4294967295u), var_1.x, var_1.x), -562f, vec2<bool>(false, true)), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(~(-vec2<i32>(u_input.c.x, 0i)), ~(vec2<i32>(0i, u_input.c.x) << (u_input.a.yy % vec2<u32>(32u)))), max(countOneBits(vec2<i32>(-1i, 1i)), select(-u_input.c.xy, reverseBits(vec2<i32>(u_input.c.x, 0i)), func_3(Struct_1(vec4<u32>(var_1.x, u_input.a.x, 2383u, 1u), global0[_wgslsmith_index_u32(var_1.x, 1u)], 460f, vec2<bool>(false, true)), u_input.a, global2.yy))), u_input.c.zy));
    var_1 = firstLeadingBit(u_input.a.ww);
    return select(select(!vec4<bool>(var_2.b.d.x, false, false, var_2.b.d.x != true), !vec4<bool>(var_2.b.d.x, var_2.a, any(vec4<bool>(false, var_2.b.d.x, var_2.b.d.x, var_2.a)), var_2.a), vec4<bool>(true, !var_2.a, var_2.a, var_2.b.d.x)), !vec4<bool>(var_2.b.d.x, !var_2.b.d.x, !any(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(64492u, 31u)], 18u)]), func_3(Struct_1(var_2.b.a, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], var_2.b.c, vec2<bool>(var_2.b.d.x, var_2.a)), countOneBits(vec4<u32>(var_2.b.a.x, 1u, var_2.b.b.x, var_1.x)), global2.zz).x), !vec4<bool>(var_2.b.d.x || all(vec3<bool>(false, var_2.a, var_2.a)), func_3(Struct_1(vec4<u32>(u_input.b, 9918u, global4[_wgslsmith_index_u32(1u, 31u)], var_2.b.b.x), vec3<u32>(0u, 39730u, var_2.b.a.x), -1000f, vec2<bool>(var_2.b.d.x, true)), ~vec4<u32>(var_2.b.a.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], var_2.b.a.x, 1u), global2.yy).x, true, all(global3[_wgslsmith_index_u32(u_input.b, 18u)]) | true));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = !arg_1;
    var var_1 = Struct_2(true, Struct_1(u_input.a, ~vec3<u32>(min(global4[_wgslsmith_index_u32(0u, 31u)], 4294967295u), ~global4[_wgslsmith_index_u32(1u, 31u)], select(97727u, u_input.a.x, true)), -648f, var_0.zx), ~vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c.x, u_input.c.x), u_input.c), u_input.c.x), u_input.c.x));
    global4 = array<u32, 31>();
    let var_2 = max(~40674u, _wgslsmith_mod_u32((u_input.b >> ((0u & u_input.a.x) % 32u)) >> (var_1.b.a.x % 32u), 4294967295u));
    global1 = -466i << (1u % 32u);
    return var_1.b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> u32 {
    return 47863u << (arg_2.a.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~((u_input.c.x >> (max(global4[_wgslsmith_index_u32(min(20443u, u_input.b), 31u)], _wgslsmith_mod_u32(34727u, u_input.a.x)) % 32u)) ^ -u_input.c.x);
    let var_0 = reverseBits(8583i);
    let var_1 = select(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(87174u, global4[_wgslsmith_index_u32(4294967295u, 31u)]), 31u)], global4[_wgslsmith_index_u32(_wgslsmith_div_u32(953u, func_5(Struct_1(u_input.a | u_input.a, vec3<u32>(0u, 0u, global4[_wgslsmith_index_u32(u_input.b, 31u)]) << (global0[_wgslsmith_index_u32(62658u, 1u)] % vec3<u32>(32u)), _wgslsmith_div_f32(global2.x, 226f), vec2<bool>(true, false)), Struct_2(false, Struct_1(u_input.a, u_input.a.zxw, global2.x, vec2<bool>(false, false)), u_input.c.yy >> (u_input.a.yy % vec2<u32>(32u))), func_4(_wgslsmith_f_op_f32(abs(1000f)), func_1()), 6425i)), 31u)], true);
    global4 = array<u32, 31>();
    let var_2 = Struct_2(true, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-444f)) - _wgslsmith_f_op_f32(floor(global2.x)))), !vec4<bool>(false, all(vec2<bool>(false, true)), func_3(Struct_1(u_input.a, u_input.a.wxw, -223f, vec2<bool>(true, true)), u_input.a, global2.yz).x, true)), u_input.c.yz);
    var var_3 = vec2<bool>(true, var_2.a);
    let var_4 = u_input.a;
    let var_5 = Struct_2(var_2.a, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.x * 1043f)))), !(!select(vec4<bool>(var_2.b.d.x, true, true, var_2.b.d.x), vec4<bool>(true, true, true, var_3.x), vec4<bool>(var_2.b.d.x, var_3.x, var_2.a, true)))), u_input.c.zz);
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_5.b.a ^ var_2.b.a), vec3<i32>(~select(var_0, var_2.c.x, true) & ~min(1i, 1i), -21120i, u_input.c.x), -abs(min(u_input.c.zz, firstLeadingBit(vec2<i32>(1591i, 0i)))));
}

