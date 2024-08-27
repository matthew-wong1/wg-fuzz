struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> vec3<bool> {
    let var_0 = countOneBits(80228u);
    let var_1 = _wgslsmith_mult_vec3_u32(countOneBits(reverseBits(vec3<u32>(27641u, ~u_input.c.x, _wgslsmith_sub_u32(arg_1.x, 22832u)))), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(73996u, var_0, ~arg_1.x), firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, arg_1.x, var_0), vec3<u32>(var_0, 0u, arg_1.x), vec3<u32>(arg_1.x, arg_1.x, 0u)))), vec3<u32>(127472u, 0u, var_0)));
    var var_2 = Struct_4(select(!select(!vec4<bool>(false, arg_0.a, false, true), select(vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(true, arg_0.a, true, false), false), select(vec4<bool>(true, arg_0.a, true, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), arg_0.a)), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, arg_0.a))), !vec4<bool>(true, all(vec2<bool>(arg_0.a, arg_0.a)), true, all(vec2<bool>(true, arg_0.a)))), -9457i, !select(select(vec3<bool>(arg_0.a, false, false), !vec3<bool>(arg_0.a, arg_0.a, arg_0.a), arg_0.a), vec3<bool>(true, true, true), true), ~(countOneBits(abs(arg_1.wy)) >> ((abs(vec2<u32>(3978u, 39951u)) << (_wgslsmith_sub_vec2_u32(arg_1.zx, vec2<u32>(arg_1.x, arg_1.x)) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var_2 = Struct_4(vec4<bool>(true | any(var_2.a), false, all(vec3<bool>(false, false, !var_2.c.x)), all(vec4<bool>(true, false, !var_2.a.x, var_2.a.x))), var_2.b | select(max(17761i, 2147483647i), _wgslsmith_dot_vec4_i32(~u_input.b, vec4<i32>(u_input.d.x, 32399i, -55414i, -6728i)), all(var_2.a.xwx)), select(select(var_2.a.yxy, var_2.a.wyw, (arg_0.a == true) | var_2.a.x), !var_2.a.xzy, vec3<bool>(any(select(var_2.c, var_2.a.yyy, true)), select(u_input.a <= u_input.b.x, true, true), true)), vec2<u32>(~(var_1.x >> (17407u % 32u)), var_2.d.x) | arg_1.wz);
    var_2 = Struct_4(var_2.a, -17895i, !select(var_2.a.yzw, !select(vec3<bool>(false, var_2.c.x, true), var_2.a.wwz, arg_0.a), any(select(vec3<bool>(true, true, arg_0.a), vec3<bool>(false, var_2.c.x, arg_0.a), false))), var_2.d);
    return vec3<bool>(all(!vec2<bool>(false, !var_2.c.x)), all(select(select(select(var_2.c.yz, vec2<bool>(arg_0.a, false), arg_0.a), !vec2<bool>(false, var_2.c.x), 4294967295u == var_0), var_2.a.zz, var_2.c.x)), arg_0.a || all(var_2.a.xz));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: i32, arg_3: vec3<u32>) -> bool {
    var var_0 = !(!arg_0.a.zyz);
    var_0 = !(!(!select(select(vec3<bool>(arg_1.x, arg_1.x, true), arg_1.xzx, false), vec3<bool>(var_0.x, true, true), any(arg_1))));
    var_0 = vec3<bool>(false | !(all(arg_0.c) | true), func_3(Struct_1(true), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, arg_3.x, 35185u, 24458u), ~vec4<u32>(0u, u_input.c.x, 1u, arg_0.d.x))).x, false);
    var_0 = arg_0.a.wyy;
    var_0 = vec3<bool>(true, true, false);
    return !(!(!all(!vec4<bool>(arg_1.x, arg_1.x, false, arg_0.c.x))));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = u_input.c.x;
    let var_1 = countOneBits(124309u);
    let var_2 = !func_4(Struct_4(vec4<bool>(any(vec2<bool>(false, true)), all(vec4<bool>(false, false, true, false)), all(vec4<bool>(true, false, false, false)), false), _wgslsmith_dot_vec2_i32(u_input.e.xx, u_input.e.zy) & -1776i, !func_3(Struct_1(false), vec4<u32>(var_0, u_input.c.x, 0u, u_input.c.x)), ~vec2<u32>(var_0, var_1)), vec4<bool>(arg_0 >= _wgslsmith_f_op_f32(-arg_0), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), any(func_3(Struct_1(false), vec4<u32>(1u, 4294967295u, 1u, 0u)).yz), _wgslsmith_clamp_u32(0u, var_1, var_0) <= 70019u), u_input.a, ~vec3<u32>(firstTrailingBit(26801u), var_0, 0u));
    let var_3 = vec2<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(trunc(arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_0));
    let var_4 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 11538u), u_input.c), u_input.c), var_0, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, _wgslsmith_clamp_u32(var_1, u_input.c.x, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 11351u, var_1), ~vec3<u32>(1u, 1u, var_0))));
    return u_input.c.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1056f, arg_0.x))));
    var var_1 = _wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(_wgslsmith_dot_vec3_u32(max(~vec3<u32>(arg_1.b.x, 10612u, u_input.c.x), firstLeadingBit(vec3<u32>(0u, arg_1.b.x, arg_1.b.x))), arg_1.b), max(4294967295u, ~_wgslsmith_mult_u32(arg_1.b.x, 14981u))));
    var var_2 = arg_1;
    var_1 = _wgslsmith_div_vec2_u32(~vec2<u32>(var_2.b.x, func_2(arg_0.x)), _wgslsmith_div_vec2_u32(var_2.b.xx, arg_1.b.zx)) << (~(~(~(vec2<u32>(var_1.x, 34753u) >> (var_2.b.xz % vec2<u32>(32u))))) % vec2<u32>(32u));
    var var_3 = var_2.b;
    return select(vec4<bool>(true, arg_1.c.a, ~52452u >= _wgslsmith_dot_vec3_u32(var_2.b, ~var_2.b), false), !select(!vec4<bool>(var_2.d.a, arg_1.c.a, false, arg_1.c.a), !(!vec4<bool>(false, arg_1.c.a, false, false)), vec4<bool>(arg_1.c.a, all(vec4<bool>(arg_1.d.a, arg_1.d.a, true, var_2.d.a)), true, all(vec3<bool>(true, var_2.d.a, true)))), !(((var_2.d.a | true) || (false & arg_1.d.a)) | true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(!(!(!func_1(vec4<f32>(-272f, 116f, -682f, -1377f), Struct_2(-204f, vec3<u32>(34090u, 1u, u_input.c.x), Struct_1(false), Struct_1(true)), -2751f))), abs(1i), vec3<bool>(func_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-431f, 1000f, -464f, -1513f))))), Struct_2(_wgslsmith_f_op_f32(select(1293f, -1673f, false)), ~vec3<u32>(13413u, u_input.c.x, u_input.c.x), Struct_1(true), Struct_1(false)), 906f).x, all(func_3(Struct_1(false), firstTrailingBit(vec4<u32>(1u, 33405u, u_input.c.x, 44440u))).yx), true & func_3(Struct_1(false), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 39612u, 1u, 4294967295u), vec4<u32>(u_input.c.x, 4294967295u, 61796u, u_input.c.x))).x), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c, select(u_input.c & u_input.c, ~u_input.c, vec2<bool>(true, true))), countOneBits(vec2<u32>(u_input.c.x, u_input.c.x) & u_input.c) & vec2<u32>(max(u_input.c.x, u_input.c.x), select(u_input.c.x, u_input.c.x, true))));
    var_0 = Struct_4(!(!var_0.a), _wgslsmith_mult_i32(var_0.b, 0i), vec3<bool>(!var_0.a.x, false, false & (0i <= _wgslsmith_mult_i32(var_0.b, 84755i))), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(countOneBits(1u), _wgslsmith_add_u32(var_0.d.x, 5935u)), u_input.c), u_input.c));
    let var_1 = Struct_3(firstTrailingBit(vec4<u32>(55704u, 0u, ~var_0.d.x, 44954u) >> (_wgslsmith_mult_vec4_u32(abs(vec4<u32>(24144u, u_input.c.x, var_0.d.x, var_0.d.x)), firstTrailingBit(vec4<u32>(u_input.c.x, var_0.d.x, var_0.d.x, var_0.d.x))) % vec4<u32>(32u))), Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -443f))))), ~firstLeadingBit(~vec3<u32>(48137u, u_input.c.x, 0u)), Struct_1(any(var_0.a.wzw)), Struct_1(true)), Struct_2(-550f, ~(~(~vec3<u32>(0u, u_input.c.x, u_input.c.x))), Struct_1(var_0.a.x), Struct_1(var_0.a.x)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -678f), vec3<u32>(~var_0.d.x, 1u, ~abs(4294967295u)), Struct_1(var_0.c.x), Struct_1(false)), vec2<bool>(true, any(select(var_0.a, var_0.a, select(vec4<bool>(var_0.c.x, var_0.a.x, var_0.c.x, true), vec4<bool>(true, true, var_0.c.x, var_0.c.x), true)))));
    let var_2 = i32(-1i) * -73123i;
    var var_3 = var_1.d.c;
    let var_4 = !vec4<bool>(var_1.e.x, !var_3.a, var_3.a, !all(var_1.e));
    var_3 = Struct_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.a, ~_wgslsmith_mult_vec4_i32(~vec4<i32>(var_2, -2147483647i, var_2, var_0.b), vec4<i32>(-1i, 2147483647i, 2147483647i, 1i)) << (firstTrailingBit(vec4<u32>(abs(var_0.d.x), var_0.d.x, select(var_0.d.x, 71043u, var_3.a), 4294967295u)) % vec4<u32>(32u)), 1069f, _wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-18189i & var_2, -28164i), var_0.b, (u_input.d.x ^ 27067i) & _wgslsmith_add_i32(-32908i, -10444i))));
}

