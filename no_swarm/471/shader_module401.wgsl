struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 31>;

var<private> global2: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(vec4<i32>(1i, 2147483647i, -12225i, 0i), true, -1285f, vec2<bool>(false, true))), Struct_2(Struct_1(vec4<i32>(62673i, -1i, 2147483647i, 0i), true, -587f, vec2<bool>(false, false))), Struct_2(Struct_1(vec4<i32>(13687i, 8618i, 2147483647i, 0i), false, 821f, vec2<bool>(false, true))), Struct_2(Struct_1(vec4<i32>(2147483647i, -33029i, i32(-2147483648), -8001i), false, 1264f, vec2<bool>(true, false))), Struct_2(Struct_1(vec4<i32>(0i, 15176i, -3026i, -20507i), false, 1000f, vec2<bool>(true, false))), Struct_2(Struct_1(vec4<i32>(-25097i, i32(-2147483648), -11542i, -38434i), false, 181f, vec2<bool>(false, false))), Struct_2(Struct_1(vec4<i32>(1i, 1i, 37430i, 36105i), false, -524f, vec2<bool>(true, true))), Struct_2(Struct_1(vec4<i32>(-18126i, -1i, 0i, -1i), false, -1000f, vec2<bool>(true, true))), Struct_2(Struct_1(vec4<i32>(14852i, 12000i, -15613i, -28520i), false, 846f, vec2<bool>(true, false))), Struct_2(Struct_1(vec4<i32>(-50703i, 0i, -5123i, -13830i), true, 810f, vec2<bool>(true, false))), Struct_2(Struct_1(vec4<i32>(-1i, 0i, 109154i, -13437i), true, 1904f, vec2<bool>(true, true))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -20019i, 22266i, -61402i), true, -915f, vec2<bool>(false, true))), Struct_2(Struct_1(vec4<i32>(1i, -8144i, 5426i, -20991i), true, 736f, vec2<bool>(true, true))), Struct_2(Struct_1(vec4<i32>(2147483647i, -3119i, 2147483647i, 18114i), false, 1332f, vec2<bool>(true, false))), Struct_2(Struct_1(vec4<i32>(2147483647i, 2147483647i, 0i, 2147483647i), true, 224f, vec2<bool>(true, false))));

var<private> global3: array<bool, 16>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>) -> vec2<bool> {
    global2 = array<Struct_2, 15>();
    let var_0 = true;
    global2 = array<Struct_2, 15>();
    return select(select(select(!select(vec2<bool>(arg_0.x, true), global0.d, arg_0), !select(vec2<bool>(false, global0.b), global0.d, global0.d), true), global0.d, global0.d), select(vec2<bool>(false, global0.d.x), vec2<bool>(_wgslsmith_add_i32(u_input.c, 0i) > 0i, !(!arg_0.x)), true), global0.b);
}

fn func_2() -> bool {
    var var_0 = Struct_1(reverseBits(global0.a), all(!vec2<bool>(false & global3[_wgslsmith_index_u32(0u, 16u)], !global3[_wgslsmith_index_u32(u_input.d, 16u)])), global0.c, !(!select(select(global0.d, vec2<bool>(true, global0.d.x), global3[_wgslsmith_index_u32(15490u, 16u)]), func_3(vec2<bool>(false, false), global0.a.xx), func_3(global0.d, u_input.b))));
    var var_1 = min(u_input.a.zz, ~(~(~(vec2<u32>(1u, u_input.a.x) << (u_input.a.yz % vec2<u32>(32u))))));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_div_u32(u_input.d, 1u)), min(var_1.x, _wgslsmith_div_u32(4294967295u, 77343u))), ~select(75278u, firstTrailingBit(1u), select(false, global3[_wgslsmith_index_u32(1u, 16u)], false))) ^ (_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a.x, u_input.d, var_1.x)), u_input.a) >> ((324u << (((var_1.x & 0u) ^ var_1.x) % 32u)) % 32u)), 15u)];
    global1 = array<i32, 31>();
    let var_3 = 0i;
    return select(true && global0.d.x, global0.b, any(!(!select(vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 16u)], true, var_2.a.b), vec4<bool>(false, true, var_0.d.x, false), vec4<bool>(var_2.a.b, global0.d.x, false, global3[_wgslsmith_index_u32(10810u, 16u)])))));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = firstTrailingBit(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, arg_0.x, arg_0.x, 30928u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 35032u, u_input.a.x, 4294967295u), vec4<u32>(0u, u_input.a.x, u_input.d, 44131u) >> (vec4<u32>(arg_0.x, arg_0.x, 1u, 0u) % vec4<u32>(32u)))) & _wgslsmith_sub_u32(abs(_wgslsmith_clamp_u32(10998u, u_input.a.x, 4294967295u)), arg_0.x));
    let var_1 = global2[_wgslsmith_index_u32(arg_0.x, 15u)];
    var var_2 = var_1.a;
    var_2 = var_1.a;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a.c)))), _wgslsmith_f_op_f32(trunc(-2005f)), var_2.c);
    return Struct_1(var_2.a, !(true && func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.c + global0.c))))) - _wgslsmith_f_op_f32(-var_1.a.c)), var_1.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(38703u, u_input.a.x) & select(44263u, u_input.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 16u)]), 0u), u_input.a.yx), 16u)];
    var var_1 = u_input.a.x;
    let var_2 = global0.d;
    var var_3 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(23304i, -_wgslsmith_sub_i32(global0.a.x, 2147483647i), _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(global0.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 31u)])) | ~(-33758i), max(-19602i, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(4294967295u, 31u)], 0i))), vec4<i32>(~select(50532i, u_input.c, true), global0.a.x, _wgslsmith_mult_i32(u_input.b.x, 11071i), _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.b.x, u_input.c), ~0i)), _wgslsmith_mod_vec4_i32(max(countOneBits(vec4<i32>(u_input.c, 0i, -56335i, 2147483647i)), _wgslsmith_add_vec4_i32(global0.a, global0.a)), vec4<i32>(countOneBits(global0.a.x), u_input.b.x, global0.a.x, select(global1[_wgslsmith_index_u32(u_input.d, 31u)], 51166i, false))));
    var var_4 = abs(~(-(~(-1i))));
    let var_5 = Struct_2(func_1(u_input.a | reverseBits(vec3<u32>(u_input.a.x, u_input.d, 90845u) >> (u_input.a % vec3<u32>(32u)))));
    global0 = var_5.a;
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, -463f, 744f, 751f) - vec4<f32>(global0.c, var_5.a.c, 114f, 715f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_6.zzx * var_6.yzw), vec2<i32>(0i, u_input.c ^ var_3.x), -32304i, ~(~u_input.a), ~(~(~37637u << (u_input.d % 32u))));
}

