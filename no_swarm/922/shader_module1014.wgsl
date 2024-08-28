struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
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

var<private> global0: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false));

var<private> global1: array<f32, 24>;

var<private> global2: Struct_2 = Struct_2(vec3<u32>(26484u, 4294967295u, 29092u), vec3<u32>(4294967295u, 49305u, 20548u));

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a)))));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-233f * global1[_wgslsmith_index_u32(0u, 24u)])));
    let var_2 = Struct_1(var_0.a);
    global2 = Struct_2(arg_0.wzz, abs(min(abs(select(global2.b, global2.a, vec3<bool>(false, false, false))), _wgslsmith_mult_vec3_u32(arg_0.yyz >> (arg_0.xzx % vec3<u32>(32u)), reverseBits(global2.a)))));
    let var_3 = Struct_3(arg_0.xz, select(vec4<bool>(true, true, false, any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true))), !global0[_wgslsmith_index_u32(global2.b.x, 31u)], !(true & all(vec3<bool>(false, true, true)))));
    return global1[_wgslsmith_index_u32(select(1u, abs(~44549u), true), 24u)];
}

fn func_4(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.a.x * 187f), -650f, all(vec2<bool>(false, false)))))));
    global3 = Struct_1(global3.a);
    var var_1 = firstTrailingBit(reverseBits(_wgslsmith_sub_i32(-1i, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, u_input.d)))) & -u_input.b.x;
    let var_2 = global2.a.x;
    let var_3 = ~31634u;
    return 1u;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    global2 = Struct_2(global2.b, vec3<u32>(0u, global2.b.x, func_4(_wgslsmith_f_op_f32(func_3(vec4<u32>(4294967295u, 18011u, global2.b.x, u_input.c), Struct_1(vec4<f32>(205f, global1[_wgslsmith_index_u32(global2.a.x, 24u)], 791f, 1618f)), 27932u)))));
    global0 = array<vec4<bool>, 31>();
    var var_0 = Struct_1(vec4<f32>(arg_2.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 24u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(130f)))), any(vec2<bool>(false, true)) || true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)), 542f));
    var var_1 = Struct_2(~global2.b, vec3<u32>(~((global2.b.x >> (global2.b.x % 32u)) >> (1u % 32u)), 14452u, 10164u));
    let var_2 = select(vec4<u32>(4294967295u, 46495u, _wgslsmith_sub_u32(~22704u, _wgslsmith_mult_u32(global2.a.x, var_1.b.x) << (1u % 32u)), countOneBits(~abs(var_1.a.x))), vec4<u32>(1u, ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(global2.a.x, 14637u, global2.b.x), vec3<u32>(4294967295u, 17946u, global2.b.x), vec3<bool>(true, true, false)), vec3<u32>(35479u, 39112u, global2.b.x)), ~(~(99493u | global2.b.x)), _wgslsmith_mod_u32(var_1.b.x >> (global2.a.x % 32u), abs(_wgslsmith_mod_u32(75934u, 47062u)))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(7309u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, 56287u, var_1.a.x), global2.a)), 31u)]);
    return global2.b.x & u_input.c;
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: bool) -> vec3<u32> {
    let var_0 = -(~u_input.b.x);
    global0 = array<vec4<bool>, 31>();
    let var_1 = Struct_2(abs(vec3<u32>(_wgslsmith_add_u32(0u, abs(38068u)), ~4294967295u << (global2.b.x % 32u), arg_1.a.x)), min(~global2.a, global2.a));
    var var_2 = ~(~func_2(_wgslsmith_f_op_vec4_f32(global3.a + _wgslsmith_f_op_vec4_f32(-global3.a)), u_input.b.xz, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1075f, global1[_wgslsmith_index_u32(u_input.c, 24u)], global3.a.x, 503f)))));
    global1 = array<f32, 24>();
    return vec3<u32>(~(min(func_2(global3.a, vec2<i32>(2979i, 1i), Struct_1(vec4<f32>(arg_0, -124f, 1609f, 314f))), firstTrailingBit(global2.b.x)) ^ ~global2.b.x), func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -524f)))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global2.b, ~(~func_1(_wgslsmith_f_op_f32(min(-2073f, global3.a.x)), Struct_3(global2.b.xz, global0[_wgslsmith_index_u32(global2.a.x, 31u)]), true)));
    global1 = array<f32, 24>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-673f)) * _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(34002u, 24u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.a.x, global1[_wgslsmith_index_u32(~57626u, 24u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2265f) - -1252f)), _wgslsmith_f_op_f32(-global3.a.x), global3.a.x));
    let var_2 = select(vec3<i32>(select(countOneBits(-1859i), -36850i, !(global2.a.x == 48498u)), i32(-1i) * -2147483647i, u_input.d), select(~(-vec3<i32>(u_input.b.x, 21959i, 13998i)), vec3<i32>(~u_input.b.x & max(1i, u_input.d), -2147483647i, u_input.d), false), vec3<bool>(!(!any(vec2<bool>(false, true))), select(all(vec3<bool>(false, true, true)) || true, true, all(select(global0[_wgslsmith_index_u32(56977u, 31u)], vec4<bool>(false, true, true, false), global0[_wgslsmith_index_u32(21796u, 31u)]))), true));
    global3 = Struct_1(global3.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(max(vec4<u32>(0u, 0u, 23574u, var_0.a.x), vec4<u32>(var_0.a.x, 1u, 1u, global2.a.x)))));
}

