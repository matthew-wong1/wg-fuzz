struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: i32;

var<private> global2: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<bool>) -> f32 {
    let var_0 = Struct_2(~5106u);
    global2 = 17370u;
    let var_1 = true;
    var var_2 = u_input.b;
    let var_3 = true;
    return _wgslsmith_f_op_f32(f32(-1f) * -836f);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> vec3<u32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(676f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1330f + 346f), _wgslsmith_f_op_f32(ceil(773f)))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f) + 478f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-539f))))), u_input.c, firstLeadingBit(~(vec3<u32>(20140u, 1u, 4294967295u) & vec3<u32>(arg_2.a, arg_0.x, 50072u))), vec4<bool>(u_input.c.x > max(u_input.a, -1i), (u_input.a << (arg_1 % 32u)) != (u_input.a >> (arg_2.a % 32u)), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), true), _wgslsmith_f_op_f32(f32(-1f) * -1142f)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1926f))))), u_input.c, _wgslsmith_mult_vec3_u32(~arg_0.zyx, select(~arg_0.zzx, ~arg_0.xzy, vec3<bool>(true, true, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), u_input.c.x <= 2641i), true), -689f), arg_2);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1965f, var_0.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.c.a, var_0.b.a)) * _wgslsmith_f_op_vec2_f32(-var_0.a)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2010f, var_1.x), -936f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -802f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c.a.x, -772f, false)) * -731f)), 793f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.e, 621f, _wgslsmith_f_op_f32(382f + _wgslsmith_f_op_f32(var_1.x + -137f)), _wgslsmith_f_op_f32(var_0.c.e + _wgslsmith_f_op_f32(var_0.b.a.x * var_1.x)))));
    var var_3 = var_0.b;
    let var_4 = abs(var_0.b.c.x);
    return ~abs(abs(var_3.c));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_3(arg_3.a, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -932f), _wgslsmith_f_op_f32(arg_3.a.x - 1522f))), _wgslsmith_f_op_f32(floor(arg_3.e))), vec3<i32>(arg_3.b.x, ~(~(-1i)), -arg_0.b.b.x), func_3(~(~vec4<u32>(45016u, arg_2.x, 63600u, 20364u)), arg_2.x, Struct_2(16398u), ~(~arg_0.d.a)), vec4<bool>(true, true, arg_0.c.d.x, any(select(arg_0.b.d.zx, vec2<bool>(arg_1, arg_0.b.d.x), arg_0.c.d.x))), -1037f), arg_0.b, Struct_2(67338u));
    global1 = -25266i;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -264f))) - _wgslsmith_f_op_f32(-689f * -224f)), _wgslsmith_div_f32(_wgslsmith_div_f32(577f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_0.c.e)));
    let var_2 = vec2<u32>(arg_0.d.a, 62974u);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -1529f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1300f, -955f)), _wgslsmith_f_op_f32(floor(-200f)), false)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.x - arg_3.e) + arg_3.e);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_5, arg_3: vec2<i32>) -> StorageBuffer {
    global0 = arg_3.x;
    let var_0 = 196f;
    let var_1 = ~(-15865i);
    let var_2 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(850f, arg_2.a.x) * vec2<f32>(_wgslsmith_f_op_f32(-1137f - -671f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(630f)), var_0))), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_2.a.yx, arg_2.a.xy)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-360f, -659f), vec2<f32>(-477f, arg_1)))))), ~u_input.c, max(~vec3<u32>(1u, 0u, u_input.d) & vec3<u32>(u_input.d, arg_0, u_input.b.x), countOneBits(vec3<u32>(u_input.b.x, u_input.b.x, arg_0) >> (vec3<u32>(arg_0, 15547u, u_input.d) % vec3<u32>(32u)))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(arg_2.a.x * var_0))) * _wgslsmith_f_op_f32(abs(var_0)))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 324f)), u_input.c, vec3<u32>(_wgslsmith_add_u32(u_input.b.x, 0u), ~41751u, 4294967295u) >> (max(vec3<u32>(1u, 1u, 15087u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_0, 4294967295u), vec3<u32>(arg_0, arg_0, 11607u))) % vec3<u32>(32u)), select(select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), true), _wgslsmith_f_op_f32(ceil(516f))), Struct_2(max(32467u, abs(arg_0))));
    global0 = 1i;
    return StorageBuffer(_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(arg_0, vec2<bool>(var_2.b.d.x, true), vec3<bool>(var_2.b.d.x, false, var_2.b.d.x))), _wgslsmith_f_op_f32(-1000f + arg_1), all(vec2<bool>(false, var_2.c.d.x)))), 420f)), ~vec4<u32>(32661u, ~(~4294967295u), var_2.c.c.x, abs(reverseBits(0u))), select(var_2.b.b, -u_input.c, select(!(!var_2.c.d.yxz), var_2.c.d.xxx, vec3<bool>(true, all(vec2<bool>(var_2.c.d.x, var_2.c.d.x)), var_2.c.d.x))), vec2<i32>(2147483647i, firstLeadingBit(u_input.c.x)) & (~_wgslsmith_mult_vec2_i32(arg_3, var_2.b.b.xz) ^ arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(~_wgslsmith_div_u32(~46408u, 9537u), _wgslsmith_div_f32(_wgslsmith_div_f32(-219f, -140f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-200f - _wgslsmith_f_op_f32(func_1(52560u, vec2<bool>(true, false), vec3<bool>(false, false, false)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(Struct_3(vec2<f32>(1517f, -345f), Struct_1(vec2<f32>(767f, -2401f), u_input.c, vec3<u32>(u_input.d, 54566u, u_input.b.x), vec4<bool>(false, false, false, false), 206f), Struct_1(vec2<f32>(-130f, -943f), vec3<i32>(u_input.a, -1i, -2147483647i), vec3<u32>(u_input.d, u_input.d, u_input.b.x), vec4<bool>(false, true, true, false), -496f), Struct_2(u_input.b.x)), false, vec3<u32>(107316u, u_input.b.x, 17851u), Struct_1(vec2<f32>(960f, -656f), vec3<i32>(u_input.c.x, 1i, u_input.a), vec3<u32>(29436u, u_input.d, u_input.d), vec4<bool>(false, true, false, false), 209f))), -1000f)))), Struct_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-350f, 677f, 430f, 682f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1018f, 1000f, 551f, 386f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1785f, -1153f, 497f, -978f))), false))), -(~u_input.c.xy));
}

