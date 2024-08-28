struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<i32>(23814i, -66996i, 484i), vec2<bool>(true, false), vec3<bool>(false, false, false), false, 0u), Struct_1(vec3<i32>(-7502i, -1i, -47315i), vec2<bool>(false, false), vec3<bool>(true, false, true), false, 52390u), Struct_1(vec3<i32>(26928i, -41928i, -21928i), vec2<bool>(true, true), vec3<bool>(true, false, false), true, 0u), Struct_1(vec3<i32>(0i, -18326i, -16099i), vec2<bool>(true, true), vec3<bool>(false, true, true), false, 18932u), Struct_1(vec3<i32>(i32(-2147483648), 31128i, -2571i), vec2<bool>(true, true), vec3<bool>(true, false, false), true, 41161u), Struct_1(vec3<i32>(0i, 1i, 5183i), vec2<bool>(false, true), vec3<bool>(false, true, false), false, 1u), Struct_1(vec3<i32>(1i, -48257i, 27491i), vec2<bool>(true, true), vec3<bool>(true, false, true), true, 0u), Struct_1(vec3<i32>(0i, 2345i, -28630i), vec2<bool>(true, true), vec3<bool>(true, false, true), true, 0u), Struct_1(vec3<i32>(25014i, -10021i, 1i), vec2<bool>(false, false), vec3<bool>(false, true, false), false, 1u), Struct_1(vec3<i32>(0i, -1i, 8410i), vec2<bool>(false, false), vec3<bool>(true, false, false), false, 107198u), Struct_1(vec3<i32>(-20798i, 2147483647i, 0i), vec2<bool>(false, false), vec3<bool>(true, true, false), true, 74085u), Struct_1(vec3<i32>(-40013i, -60761i, 0i), vec2<bool>(true, false), vec3<bool>(true, true, true), false, 0u), Struct_1(vec3<i32>(2147483647i, -36451i, -1i), vec2<bool>(false, false), vec3<bool>(true, false, false), false, 1u), Struct_1(vec3<i32>(i32(-2147483648), 64749i, -26562i), vec2<bool>(true, false), vec3<bool>(false, true, false), false, 71584u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<bool> {
    global0 = array<Struct_1, 14>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 14u)];
    let var_1 = !(!vec4<bool>(select(true != var_0.c.x, var_0.a.x == 12049i, !var_0.b.x), true, min(var_0.e, u_input.b.x) >= _wgslsmith_sub_u32(var_0.e, 0u), true));
    global0 = array<Struct_1, 14>();
    let var_2 = var_0.c.x;
    return select(var_1, vec4<bool>(any(!(!vec4<bool>(var_0.c.x, true, var_0.b.x, false))), var_0.d, !(true || var_0.b.x), var_0.b.x), true);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_1) -> vec2<bool> {
    global0 = array<Struct_1, 14>();
    let var_0 = select(select(select(arg_0, !select(arg_0, vec4<bool>(arg_0.x, false, true, arg_0.x), arg_0.x), vec4<bool>(true, select(true, true, arg_0.x), arg_0.x, true)), func_3(), vec4<bool>(all(arg_0.zz), all(vec4<bool>(arg_0.x, true, true, arg_0.x)), arg_0.x, arg_0.x)), func_3(), arg_1.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - arg_1.x));
    var var_1 = Struct_1(~(~(~(-vec3<i32>(-19631i, 37971i, arg_2.a.x)))), !(!vec2<bool>(select(true, true, true), arg_0.x)), var_0.ywy, true, ~(~u_input.b.x));
    var var_2 = global0[_wgslsmith_index_u32(var_1.e, 14u)];
    let var_3 = ~_wgslsmith_mult_u32(countOneBits(var_2.e | 12160u) ^ ~(~var_1.e), abs(var_2.e));
    return vec2<bool>(func_3().x, all(var_2.c) || true);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(vec3<i32>(2147483647i, arg_0.a.x, firstLeadingBit(select(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-30655i, arg_0.a.x, -1i), arg_0.a), arg_0.c.x))), arg_0.b, arg_0.c, !arg_0.b.x, ~u_input.b.x);
}

fn func_1() -> vec3<i32> {
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    var var_0 = func_4(Struct_1(vec3<i32>(countOneBits(u_input.a), u_input.a | u_input.a, 5948i >> (u_input.b.x % 32u)) & reverseBits(vec3<i32>(-1i, 2147483647i, u_input.a)), select(vec2<bool>(true, false), func_2(vec4<bool>(true, true, true, true), vec4<f32>(940f, 539f, 434f, -1000f), Struct_1(vec3<i32>(0i, u_input.a, u_input.a), vec2<bool>(true, true), vec3<bool>(false, true, true), false, u_input.b.x)), false), vec3<bool>(true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)), any(vec4<bool>(true, true, true, true))), func_2(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1657f, -1329f, 1184f, -104f))) + vec4<f32>(1f, 1f, 1f, 1f)), Struct_1(min(vec3<i32>(0i, 1i, -83810i), vec3<i32>(19801i, u_input.a, u_input.a)), vec2<bool>(true, true), func_3().xyw, true, ~70699u)).x, 0u));
    var_0 = Struct_1(reverseBits(var_0.a), vec2<bool>(true, !any(!var_0.c.yy)), func_3().wxw, !var_0.c.x, _wgslsmith_mod_u32(~u_input.b.x, ~(~(~25933u))));
    let var_1 = Struct_1(-(~_wgslsmith_add_vec3_i32(max(var_0.a, var_0.a), -var_0.a)), vec2<bool>(all(var_0.c), any(!vec4<bool>(true, true, var_0.d, var_0.d))), var_0.c, func_2(!vec4<bool>(var_0.d, true, var_0.d, var_0.b.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1267f, 629f, -258f, 1353f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(786f, -2152f, -1000f, -252f))), vec4<f32>(588f, -147f, -317f, _wgslsmith_f_op_f32(max(-152f, -497f))))), global0[_wgslsmith_index_u32(u_input.b.x, 14u)]).x, ~var_0.e);
    return _wgslsmith_add_vec3_i32(-firstTrailingBit(vec3<i32>(2147483647i, 1i, -2147483647i)) & select(~vec3<i32>(-1i, var_0.a.x, var_1.a.x), _wgslsmith_sub_vec3_i32(var_1.a, ~var_1.a), vec3<bool>(true, true, var_0.c.x | var_1.c.x)), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-47709i, -u_input.a, 1i), i32(-1i) * -1i), var_1.a.x, u_input.a));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    var var_0 = reverseBits(arg_1);
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    return global0[_wgslsmith_index_u32(arg_0.e, 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 14>();
    let var_0 = u_input.a;
    let var_1 = func_5(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], -func_1());
    var var_2 = Struct_1(_wgslsmith_sub_vec3_i32(var_1.a, var_1.a), !(!(!(!var_1.b))), func_5(func_4(func_4(var_1)), ~_wgslsmith_mod_vec3_i32(~vec3<i32>(1i, u_input.a, -22253i), ~vec3<i32>(-10936i, var_1.a.x, -66639i))).c, true, 52191u);
    var var_3 = true;
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~var_2.e, u_input.b.x, 4294967295u, _wgslsmith_sub_u32(~(~1413u), _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(var_4.e, var_1.e)))), vec4<u32>(u_input.b.x, ~_wgslsmith_dot_vec3_u32(u_input.b.wxy, vec3<u32>(4294967295u, 1u, var_4.e)), ~1u, ~90133u));
}

