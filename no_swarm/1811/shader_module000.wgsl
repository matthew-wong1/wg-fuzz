struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_1(~(-((u_input.a.x ^ 0i) & (-1i >> (u_input.c % 32u)))));
    let var_1 = Struct_1(_wgslsmith_mult_i32(max(u_input.a.x, max(2147483647i, 20826i << (u_input.e.x % 32u))), u_input.a.x));
    let var_2 = _wgslsmith_add_i32(-(u_input.a.x >> (u_input.c % 32u)), -25577i);
    var var_3 = var_0;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-1f), 293f);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_4 + _wgslsmith_f_op_vec2_f32(-var_4))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec4<i32>) -> bool {
    var var_0 = arg_0;
    let var_1 = vec4<i32>(~(-48930i), var_0.a.a, _wgslsmith_mult_i32(max(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, var_0.b.a, arg_0.a.a), arg_2), -arg_2.x), ~var_0.b.a), 51262i);
    var_0 = arg_0;
    var_0 = Struct_2(Struct_1(i32(-1i) * -abs(19944i)), Struct_1(~(-_wgslsmith_div_i32(-420i, var_1.x))));
    return false;
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2());
    var var_1 = var_0.x;
    var_1 = var_0.x;
    var var_2 = Struct_2(Struct_1(u_input.b), Struct_1(u_input.a.x));
    var var_3 = -u_input.a;
    return select(!select(vec3<bool>(all(vec4<bool>(false, true, true, true)), true, true), vec3<bool>(true, any(vec3<bool>(false, false, true)), var_2.a.a > var_2.b.a), select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))), select(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false)), vec3<bool>(func_3(Struct_2(var_2.b, Struct_1(var_2.b.a)), max(vec3<u32>(u_input.d.x, 4294967295u, 31901u), vec3<u32>(63419u, 1u, u_input.c)), vec4<i32>(u_input.a.x, u_input.a.x, 9600i, u_input.a.x) & vec4<i32>(var_2.a.a, -2147483647i, var_2.b.a, u_input.a.x)), all(vec3<bool>(true, true, true)), true), false), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, -312i > var_2.b.a, false)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> Struct_2 {
    var var_0 = arg_3;
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2()).x)));
    let var_1 = arg_0;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -600f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 + arg_3) * _wgslsmith_f_op_f32(-arg_3)))))), _wgslsmith_f_op_f32(ceil(arg_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -440f))))), _wgslsmith_f_op_f32(f32(-1f) * -2157f));
    var_0 = var_2.x;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-61267i << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.c, 0u, u_input.d.x), vec4<u32>(u_input.e.x, 1u, 31803u, u_input.e.x)), 0u, _wgslsmith_sub_u32(u_input.d.x, 0u)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(4294967295u, 35179u)), ~u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(54581u, 0u, 20150u, 1u), vec4<u32>(u_input.d.x, u_input.c, 20675u, u_input.e.x)), 6711u << (1u % 32u))) % 32u));
    var var_1 = -120f;
    var var_2 = func_4(select(select(vec3<bool>(select(false, false, false), true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)), select(!func_1(), vec3<bool>(true, false, true), any(vec4<bool>(true, false, false, false))), vec3<bool>(true, true, true)), Struct_2(Struct_1(_wgslsmith_add_i32(var_0.a << (0u % 32u), var_0.a ^ -23160i)), Struct_1(var_0.a)), _wgslsmith_dot_vec2_i32(countOneBits(u_input.a.zy), reverseBits(-u_input.a.yy)) == u_input.b, 402f);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(-562f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * -931f), 539f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-843f + -248f), 1365f)), _wgslsmith_div_f32(627f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-717f, -828f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 955f)), 1f, -882f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -244f) + 1290f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-926f, -1034f, 955f, 602f) * vec4<f32>(1516f, -1173f, 491f, 573f))))), vec4<bool>(!all(vec3<bool>(false, true, false)) == true, countOneBits(_wgslsmith_div_u32(u_input.e.x, 313u)) <= _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c, u_input.c), u_input.c & u_input.e.x), true, select(any(vec3<bool>(false, true, false)), all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, false))) | true)));
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2()).x, -808f) * var_3.wx);
    let var_5 = func_4(vec3<bool>(true, any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, false), true)), true), func_4(vec3<bool>(true, true, true), func_4(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), Struct_2(var_2.b, func_4(vec3<bool>(false, false, false), Struct_2(Struct_1(u_input.a.x), var_2.b), false, var_3.x).a), true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1407f + var_3.x), _wgslsmith_div_f32(-1413f, 1000f)))), true, -394f), any(!vec2<bool>(any(vec2<bool>(false, true)), true)), 338f).b;
    let var_6 = !(!(!vec4<bool>(-1407i < var_0.a, true, true, true)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-264f, var_3.x)), _wgslsmith_f_op_f32(-var_3.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) * _wgslsmith_f_op_f32(abs(var_3.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(vec2<i32>(47736i, 40086i), _wgslsmith_sub_vec2_i32(-(u_input.a.xy & vec2<i32>(var_2.a.a, u_input.a.x)), _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a.x, var_5.a), vec2<i32>(var_2.b.a, var_0.a)))), _wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 40190u, u_input.e.x, 81859u), vec4<u32>(u_input.d.x, u_input.d.x, 19906u, 4294967295u)), vec4<u32>(1u, u_input.e.x, 38986u, 1u)) | 255u), -37592i, _wgslsmith_f_op_f32(step(384f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(1043f * var_4.x)))))));
}

