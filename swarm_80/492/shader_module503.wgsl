struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = Struct_3(4294967295u, _wgslsmith_f_op_f32(1307f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c * _wgslsmith_div_f32(-663f, arg_1.c)))), arg_2.a, arg_1.b.xz, arg_2);
    var_0 = Struct_3(max(27859u & firstLeadingBit(var_0.a), ~(~0u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_0.b, arg_1.c)))), Struct_1(false), vec2<i32>(36469i, max(var_0.d.x, ~(~39971i))), Struct_2(var_0.e.a, ~(~arg_1.b) >> (max(vec4<u32>(var_0.a, 4294967295u, var_0.a, var_0.a), ~vec4<u32>(var_0.a, var_0.a, 95988u, 34525u)) % vec4<u32>(32u)), 1062f, var_0.e.d));
    let var_1 = arg_1.d;
    var_0 = Struct_3(67806u, _wgslsmith_f_op_f32(arg_2.c + var_0.b), Struct_1(_wgslsmith_div_f32(var_0.e.c, arg_2.c) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(580f, arg_2.c)) - _wgslsmith_f_op_f32(-var_0.e.c))), vec2<i32>(countOneBits(~(~1i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, -1i, 2147483647i), -vec3<i32>(0i, arg_2.b.x, -47625i))), arg_1);
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_0.b)), 278f)) * _wgslsmith_f_op_f32(select(var_0.e.c, var_0.b, any(vec2<bool>(var_0.e.d.a, true))))))), var_0.c, ~arg_1.b.zy, Struct_2(Struct_1(-223f != _wgslsmith_f_op_f32(arg_2.c + arg_1.c)), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.d.x, arg_1.b.x, -9015i, 2147483647i), vec4<i32>(-2147483647i, 15105i, arg_1.b.x, 1i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.c))), arg_1.c)), Struct_1(var_0.c.a | true)));
    return ~(arg_2.b.yx | arg_2.b.yx);
}

fn func_2() -> bool {
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(~(~(-23994i)), u_input.b), _wgslsmith_sub_i32(-1883i, u_input.b));
    var_0 = func_3(u_input.a, Struct_2(Struct_1(true), vec4<i32>(2147483647i, var_0.x, u_input.b, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-24990i, 94280i, -1i), vec3<i32>(var_0.x, -31042i, -42791i), vec3<bool>(true, false, false)), vec3<i32>(1i, var_0.x, -1i) & vec3<i32>(2147483647i, 25637i, var_0.x))), _wgslsmith_f_op_f32(-739f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1570f, 270f) * 553f)), Struct_1(true)), Struct_2(Struct_1(true), _wgslsmith_div_vec4_i32(min(min(vec4<i32>(u_input.b, 0i, var_0.x, var_0.x), vec4<i32>(1i, 1i, -42992i, u_input.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, var_0.x, var_0.x), vec4<i32>(var_0.x, u_input.b, var_0.x, u_input.a), vec4<i32>(u_input.b, -2147483647i, -39689i, 16212i))), -vec4<i32>(var_0.x, 0i, -5271i, 2147483647i)), 352f, Struct_1(!(var_0.x != var_0.x))));
    var_0 = vec2<i32>(abs(func_3(~max(u_input.b, var_0.x), Struct_2(Struct_1(true), ~vec4<i32>(var_0.x, -9814i, 14791i, var_0.x), -1435f, Struct_1(true)), Struct_2(Struct_1(true), vec4<i32>(u_input.b, var_0.x, -1i, var_0.x) | vec4<i32>(-2147483647i, u_input.a, var_0.x, u_input.b), _wgslsmith_f_op_f32(max(2643f, -1274f)), Struct_1(true))).x), var_0.x);
    var_0 = _wgslsmith_mult_vec2_i32(-reverseBits(vec2<i32>(2147483647i, ~(-12419i))), -countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(1i, 1i)) | vec2<i32>(u_input.b, var_0.x)));
    var_0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-var_0.x, _wgslsmith_clamp_i32(-var_0.x, 0i, select(-24736i, 19296i, true))), ~vec2<i32>(38790i, -var_0.x)), _wgslsmith_mult_vec2_i32(-(~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(u_input.a, -1i), vec2<i32>(var_0.x, u_input.a))), vec2<i32>(1i, 1i) ^ ~(vec2<i32>(u_input.a, var_0.x) >> (vec2<u32>(60094u, 133999u) % vec2<u32>(32u)))), ~(~(-(vec2<i32>(var_0.x, u_input.b) & vec2<i32>(-2147483647i, u_input.b)))));
    return any(select(vec3<bool>(true && all(vec2<bool>(false, true)), false, any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !any(vec3<bool>(false, false, true))), vec3<bool>(all(vec2<bool>(false, true)), true, any(vec3<bool>(false, true, true)))));
}

fn func_1(arg_0: Struct_3) -> vec4<i32> {
    let var_0 = select(!(!vec3<bool>(!arg_0.c.a, true, arg_0.e.d.a)), select(select(vec3<bool>(select(arg_0.c.a, false, arg_0.e.a.a), true, false && arg_0.c.a), select(!vec3<bool>(arg_0.c.a, false, arg_0.c.a), vec3<bool>(true, true, false), !vec3<bool>(false, false, arg_0.c.a)), select(vec3<bool>(false, true, true), select(vec3<bool>(arg_0.c.a, arg_0.c.a, arg_0.e.a.a), vec3<bool>(false, arg_0.c.a, arg_0.c.a), vec3<bool>(false, arg_0.e.d.a, true)), !vec3<bool>(false, false, arg_0.c.a))), vec3<bool>(arg_0.c.a, arg_0.c.a, false), !(!(!vec3<bool>(arg_0.e.d.a, false, true)))), func_2());
    let var_1 = ~(-1i);
    var var_2 = select(var_0.zx, !vec2<bool>(true, !all(vec3<bool>(var_0.x, true, false))), select(var_0.xx, vec2<bool>(func_2(), true), var_0.x));
    var_2 = !(!vec2<bool>(!var_0.x, false));
    let var_3 = Struct_2(Struct_1(var_0.x), arg_0.e.b, arg_0.b, arg_0.c);
    return _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(arg_0.e.b, arg_0.e.b), _wgslsmith_mod_i32(17981i, -2828i), -19176i) >> (~arg_0.a % 32u), -11099i, 29558i, ~_wgslsmith_sub_i32(arg_0.d.x, ~(-9481i))), vec4<i32>(_wgslsmith_add_i32(u_input.b, _wgslsmith_mult_i32(~arg_0.d.x, -26712i)), u_input.b, var_1, firstLeadingBit(~_wgslsmith_dot_vec2_i32(var_3.b.wx, vec2<i32>(-2147483647i, arg_0.e.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    var var_1 = false;
    let var_2 = Struct_2(Struct_1(false & all(vec2<bool>(true, true))), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b, -587i, u_input.a, 2361i), reverseBits(select(-vec4<i32>(var_0, 34724i, -2147483647i, u_input.b), func_1(Struct_3(4294967295u, -1637f, Struct_1(true), vec2<i32>(13316i, u_input.b), Struct_2(Struct_1(false), vec4<i32>(u_input.b, 7937i, 1i, var_0), 1000f, Struct_1(false)))), true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-298f - 152f)))))), Struct_1(all(vec2<bool>(true, true))));
    var_1 = true;
    var var_3 = Struct_3(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(73529u, 17463u, 0u, 42642u), any(vec3<bool>(true, false, var_2.a.a))), ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 1625u)), _wgslsmith_div_u32(36355u, 13988u), 0u, 2055u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -975f), _wgslsmith_f_op_f32(-var_2.c)), Struct_1(var_2.d.a), func_3(u_input.a, var_2, Struct_2(Struct_1(false), ~reverseBits(vec4<i32>(var_0, var_0, -2147483647i, var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c), var_2.c), Struct_1(any(vec2<bool>(var_2.d.a, var_2.d.a))))), var_2);
    let var_4 = -160f;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(686f + _wgslsmith_f_op_f32(-var_2.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-562f, -1000f) - 946f), _wgslsmith_f_op_f32(-var_2.c))), abs(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, var_3.a, 30757u), vec3<u32>(var_3.a, 20138u, 1u))));
}

