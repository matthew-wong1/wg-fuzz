struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(2147483647i, -1i, 20321i, -42452i, -21318i, 36286i, -19493i, -11402i, 1i, -1i, -1i, -145i, 2147483647i, i32(-2147483648), i32(-2147483648), 66216i, -1i, 1053i, -1i, -1i, -1i, i32(-2147483648), -468i, -16938i);

var<private> global1: Struct_2;

var<private> global2: array<i32, 26>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: bool) -> bool {
    global1 = Struct_2(global1.a);
    global2 = array<i32, 26>();
    var var_0 = arg_2 | arg_2;
    return !(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(~(~u_input.a.x), 26u)], reverseBits(2147483647i), ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 0u), 24u)]) >= -global0[_wgslsmith_index_u32(u_input.a.x, 24u)]);
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = !(!any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), false)));
    global0 = array<i32, 24>();
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1828f - global1.a.x), _wgslsmith_div_f32(global1.a.x, global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -253f)))));
    var var_1 = Struct_5(Struct_1(select(select(select(vec3<bool>(false, var_0, true), vec3<bool>(false, true, var_0), false), !vec3<bool>(var_0, true, false), !vec3<bool>(true, var_0, false)), select(select(vec3<bool>(var_0, true, true), vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, var_0)), vec3<bool>(var_0, false, true), vec3<bool>(true, false, var_0)), any(select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, false), false))), 2365u & select(u_input.a.x, u_input.a.x, var_0 || var_0), !var_0, 73298u, _wgslsmith_mod_u32(u_input.a.x | _wgslsmith_clamp_u32(13090u, u_input.a.x, u_input.a.x), u_input.a.x)), Struct_1(select(vec3<bool>(u_input.a.x > u_input.a.x, true, var_0), !vec3<bool>(false, var_0, false), !vec3<bool>(true, var_0, var_0)), firstTrailingBit(_wgslsmith_dot_vec4_u32(~u_input.a, u_input.a)), var_0, firstLeadingBit(u_input.a.x), 0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(943f, 491f, arg_0, arg_0), vec4<f32>(157f, global1.a.x, arg_0, global1.a.x))))))));
    global0 = array<i32, 24>();
    return u_input.a.x;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> u32 {
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global1.a.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a)))));
    var var_0 = Struct_5(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, func_2(856f, true, false), true), true), 1u, select(true, (global0[_wgslsmith_index_u32(u_input.a.x, 24u)] | arg_1.x) > _wgslsmith_dot_vec3_i32(vec3<i32>(-29747i, 0i, -41146i), arg_1), true), func_3(global1.a.x), firstLeadingBit(u_input.a.x) ^ ~(~34434u)), Struct_1(vec3<bool>(true, true, true), ~(~_wgslsmith_sub_u32(4294967295u, arg_0)), all(vec2<bool>(func_2(-1493f, false, true), false)), ~4294967295u, 1u), vec4<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2307f + 659f) + _wgslsmith_f_op_f32(select(global1.a.x, -764f, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(846f))), global1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - 591f), _wgslsmith_f_op_f32(-global1.a.x)));
    let var_1 = Struct_1(!vec3<bool>(true, select(any(vec2<bool>(var_0.a.a.x, false)), true, false), all(select(var_0.a.a.zx, var_0.a.a.xz, var_0.b.a.x))), (29442u >> (var_0.b.d % 32u)) >> (~1u % 32u), var_0.b.c, 4294967295u, abs(var_0.b.b) | (0u ^ arg_0));
    global0 = array<i32, 24>();
    let var_2 = Struct_1(vec3<bool>(var_0.b.a.x, true, any(select(!vec3<bool>(false, var_0.b.c, var_1.c), var_0.a.a, select(vec3<bool>(false, var_1.a.x, false), vec3<bool>(var_1.c, true, true), vec3<bool>(var_0.a.a.x, true, var_0.b.a.x))))), 15432u, _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(673f + var_0.c.x), 1000f)) != global1.a.x, firstTrailingBit(u_input.a.x), ~(~_wgslsmith_add_u32(arg_0 >> (var_1.b % 32u), var_0.b.d)));
    return 49225u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 26>();
    var var_0 = false;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), global1.a.x, _wgslsmith_f_op_f32(-1000f - global1.a.x), global1.a.x);
    var var_2 = _wgslsmith_sub_u32(~(~(~25525u)), _wgslsmith_mod_u32(~u_input.a.x, func_1(u_input.a.x, vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], 1i, global0[_wgslsmith_index_u32(u_input.a.x, 24u)]) >> (u_input.a.yxw % vec3<u32>(32u)))));
    var var_3 = var_1.xx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x << (countOneBits(29576u) % 32u), 1u), ~select(u_input.a.zz, ~vec2<u32>(4294967295u, 1u), true), _wgslsmith_mod_vec2_u32(u_input.a.ww, countOneBits(abs(vec2<u32>(u_input.a.x, 81683u))))), -_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 0i), vec3<i32>(global0[_wgslsmith_index_u32(1u, 24u)], 15640i, global0[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(31456u, 24u)]), vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], -34455i, 7141i))), _wgslsmith_mult_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], -13288i, global2[_wgslsmith_index_u32(u_input.a.x, 26u)]), min(vec3<i32>(25647i, global2[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec3<i32>(-14910i, global2[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(31257u, 24u)]))), ~(-vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], -2147483647i))), 1u, u_input.a);
}

