struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(4294967295u, 3137u, 1u, 1u), vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<u32>(64306u, 4294967295u, 21423u, 16583u), vec4<u32>(0u, 56476u, 72533u, 60436u), vec4<u32>(67657u, 1u, 13053u, 4294967295u), vec4<u32>(30475u, 1u, 64870u, 1u), vec4<u32>(24911u, 4294967295u, 8702u, 10542u), vec4<u32>(21463u, 0u, 0u, 0u), vec4<u32>(0u, 5700u, 15855u, 15498u), vec4<u32>(0u, 50841u, 51079u, 70869u), vec4<u32>(1u, 1u, 39857u, 30133u), vec4<u32>(1u, 1u, 7710u, 1u), vec4<u32>(12680u, 4294967295u, 13049u, 69756u), vec4<u32>(4294967295u, 682u, 23012u, 12727u), vec4<u32>(0u, 1u, 4294967295u, 24937u), vec4<u32>(9738u, 8707u, 66636u, 94557u), vec4<u32>(1u, 54811u, 0u, 0u));

var<private> global1: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<i32>) -> bool {
    var var_0 = firstLeadingBit(firstLeadingBit(u_input.d));
    let var_1 = arg_2;
    var var_2 = vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(13248u, 0u, u_input.c.x), vec3<u32>(var_1.c.x, u_input.c.x, 4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, 4294967295u, var_1.c.x) | arg_2.c, ~global0[_wgslsmith_index_u32(var_1.c.x, 17u)])), _wgslsmith_dot_vec3_u32(~(~arg_2.c.yww), ~select(arg_2.c.wzz, vec3<u32>(arg_2.c.x, u_input.c.x, 1u), vec3<bool>(true, false, var_1.b.x)))) ^ ~firstTrailingBit(u_input.c);
    var_0 = u_input.d;
    var_2 = arg_2.c.xy;
    return var_1.b.x;
}

fn func_2(arg_0: vec4<f32>) -> vec4<bool> {
    global0 = array<vec4<u32>, 17>();
    var var_0 = !func_3(~vec3<i32>(u_input.b.x | 1i, u_input.d.x >> (3029u % 32u), i32(-1i) * -2147483647i), _wgslsmith_f_op_vec3_f32(-arg_0.xwx), Struct_1(_wgslsmith_div_f32(-1000f, arg_0.x), vec2<bool>(false, false), vec4<u32>(u_input.c.x, u_input.c.x, ~u_input.c.x, 11543u)), ~abs(~vec2<i32>(u_input.a.x, u_input.a.x)));
    var_0 = all(select(vec2<bool>(true, false), global1[_wgslsmith_index_u32(u_input.c.x, 11u)], true));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), arg_0.x))))), global1[_wgslsmith_index_u32(29236u, 11u)], ~(firstLeadingBit(firstTrailingBit(vec4<u32>(39794u, 9224u, 0u, 4997u))) ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(35189u, u_input.c.x, u_input.c.x, 1u), vec4<u32>(12272u, u_input.c.x, 1u, 4294967295u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_1.a)), _wgslsmith_f_op_f32(abs(arg_0.x)), all(vec4<bool>(var_1.b.x, false, false, false)))), arg_0.x), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(step(var_1.a, -2529f)))), -1127f, 1000f));
    return select(!select(vec4<bool>(var_1.a == 931f, true, var_1.b.x, true), vec4<bool>(true, all(global1[_wgslsmith_index_u32(4294967295u, 11u)]), false, !var_1.b.x), true), vec4<bool>(var_1.b.x, all(select(vec2<bool>(true, true), vec2<bool>(true, var_1.b.x), var_1.b.x)), true, true), all(vec4<bool>(!(!var_1.b.x), true, false | var_1.b.x, select(true, true, false))));
}

fn func_1() -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -319f))))), select(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(u_input.c.x), u_input.c.x), 11u)], vec2<bool>(true, any(func_2(vec4<f32>(-616f, -1998f, 373f, -1000f)))), !global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, 1u), 11u)]), ~vec4<u32>(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(u_input.c.x, 17u)]), ~u_input.c.x, ~u_input.c.x, abs(0u)) << (global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), 17u)], ~vec4<u32>(u_input.c.x, 4294967295u, 0u, u_input.c.x)), u_input.c.x), 17u)] % vec4<u32>(32u)));
    return !select(select(select(func_2(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a)).xwy, vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), select(vec3<bool>(false, false, true), select(vec3<bool>(false, var_0.b.x, true), vec3<bool>(false, var_0.b.x, var_0.b.x), true), var_0.b.x), vec3<bool>(true, true, true)), vec3<bool>(var_0.b.x, var_0.b.x, !all(vec4<bool>(false, var_0.b.x, true, var_0.b.x))), select(vec3<bool>(true, select(false, var_0.b.x, var_0.b.x), any(vec2<bool>(false, var_0.b.x))), !func_2(vec4<f32>(575f, -411f, -1862f, var_0.a)).zzz, vec3<bool>(var_0.b.x, true, any(vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1001f, 301f, -1000f, 439f) + vec4<f32>(1401f, -333f, -2154f, -1134f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1937f, -1205f, -1177f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(235f, 264f, -1096f, 1000f) * vec4<f32>(-983f, 936f, -1217f, -1951f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(var_0.zw));
    let var_2 = Struct_1(-708f, !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c, ~(~vec2<u32>(1u, 1u))), 11u)], global0[_wgslsmith_index_u32(u_input.c.x, 17u)]);
    var var_3 = var_2.c.zy;
    let var_4 = select(!(!(!select(vec3<bool>(var_2.b.x, false, var_2.b.x), vec3<bool>(var_2.b.x, false, var_2.b.x), vec3<bool>(false, true, false)))), func_1(), func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2184f * var_0.x)), _wgslsmith_f_op_f32(-var_1.x), var_0.x, var_2.a)).x);
    global1 = array<vec2<bool>, 11>();
    var var_5 = min(select(vec4<i32>(u_input.d.x, min(u_input.d.x ^ u_input.d.x, u_input.d.x), _wgslsmith_clamp_i32(countOneBits(-15556i), 1i, firstTrailingBit(11234i)), max(u_input.d.x, ~u_input.d.x)), ~_wgslsmith_add_vec4_i32(~vec4<i32>(35985i, 37314i, u_input.d.x, -1i), vec4<i32>(-1i, 0i, -37861i, u_input.b.x)), var_4.x), -vec4<i32>(i32(-1i) * -33273i, u_input.a.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d.x, -2542i), u_input.d.zy ^ vec2<i32>(-27724i, 6404i)), u_input.b.x));
    global0 = array<vec4<u32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d.x, u_input.c.x, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(944f + 430f), _wgslsmith_div_f32(-431f, var_1.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1116f - 630f)), var_2.a))), 12105u);
}

