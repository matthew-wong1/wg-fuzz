struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> i32 {
    let var_0 = u_input.a.xx;
    return max(~4832i, abs(firstLeadingBit(arg_2.b.x)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_u32(u_input.a.zx, abs(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a.x) ^ vec2<u32>(u_input.a.x, 0u), vec2<u32>(8823u, 16764u))) | reverseBits(max(vec2<u32>(338u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)) & countOneBits(u_input.a.yz)));
    var var_1 = arg_0;
    let var_2 = ~1i >> (u_input.a.x % 32u);
    var var_3 = Struct_1(arg_0.b.wxx, vec4<i32>(-_wgslsmith_dot_vec2_i32(var_1.b.yz, vec2<i32>(1i, 8208i) ^ vec2<i32>(arg_0.a.x, var_1.a.x)), reverseBits(select(0i, -2147483647i, false)) ^ ~select(0i, var_1.b.x, arg_1.x), 2147483647i, select((arg_0.a.x & 47768i) ^ var_1.a.x, _wgslsmith_mod_i32(-15510i, _wgslsmith_dot_vec3_i32(arg_0.a, vec3<i32>(arg_0.a.x, -86549i, var_2))), !arg_1.x)), vec4<f32>(-1451f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2, 864f), _wgslsmith_f_op_f32(f32(-1f) * -731f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, arg_3)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -848f), -777f, true)) + _wgslsmith_f_op_f32(exp2(arg_3))), _wgslsmith_f_op_f32(ceil(2209f))));
    let var_4 = Struct_1(_wgslsmith_div_vec3_i32(-arg_0.a, ~reverseBits(~arg_0.a)), arg_0.b, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.x + -1685f) - _wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_f32(-var_3.c.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-123f + 1575f))))), _wgslsmith_f_op_f32(max(arg_0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(733f)), arg_2)))));
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> vec3<bool> {
    var var_0 = func_2(Struct_1(~vec3<i32>(_wgslsmith_dot_vec4_i32(arg_0.b, vec4<i32>(arg_0.b.x, -13988i, -1i, -2147483647i)), abs(arg_0.a.x), arg_0.a.x), max(arg_0.b & vec4<i32>(20289i, 2147483647i, 0i, arg_0.a.x), vec4<i32>(arg_0.b.x, ~arg_0.a.x, 2147483647i, arg_0.a.x)), arg_0.c), !vec4<bool>(false, arg_1, (arg_2 << (u_input.a.x % 32u)) < ~6866u, false), arg_0.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.c.x + -189f), _wgslsmith_f_op_f32(474f - 293f))));
    var var_1 = vec2<bool>(true, true);
    var_1 = !select(select(!(!vec2<bool>(arg_1, false)), vec2<bool>(arg_1, select(var_1.x, var_1.x, arg_1)), all(!vec4<bool>(arg_1, false, arg_1, false))), !vec2<bool>(all(vec2<bool>(var_1.x, var_1.x)), !arg_1), !arg_1);
    let var_2 = firstTrailingBit(~((~vec3<u32>(0u, 1u, arg_2) << (reverseBits(u_input.a) % vec3<u32>(32u))) ^ abs(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(5137u, u_input.a.x, 1u)))));
    var_0 = arg_0;
    return !select(vec3<bool>(any(select(vec3<bool>(true, arg_1, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(arg_1, var_1.x, true))), all(vec2<bool>(false, true)), true), vec3<bool>(select(var_1.x, var_1.x, select(false, false, arg_1)), var_1.x, !select(var_1.x, false, arg_1)), var_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(abs(vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, 2147483647i), vec2<i32>(19167i, 12346i)), 1i, -61468i)), countOneBits(vec4<i32>(~(-2147483647i) & func_1(-713f, u_input.a.x, Struct_1(vec3<i32>(0i, -23487i, -17338i), vec4<i32>(35080i, 0i, 2147483647i, 39254i), vec4<f32>(1634f, 2607f, 242f, -403f))), func_4(func_2(Struct_1(vec3<i32>(-2147483647i, 37902i, -2147483647i), vec4<i32>(-28865i, 1i, -11767i, 2147483647i), vec4<f32>(395f, 991f, -696f, -360f)), vec4<bool>(true, false, false, false), -476f, 1091f), _wgslsmith_f_op_f32(f32(-1f) * -1354f), func_3(Struct_1(vec3<i32>(-6621i, -2147483647i, 46820i), vec4<i32>(20110i, 2147483647i, 5407i, 6292i), vec4<f32>(1144f, -253f, 881f, 1300f)), false, u_input.a.x), func_2(Struct_1(vec3<i32>(0i, -1i, 1i), vec4<i32>(-58242i, 6645i, -2147483647i, 1i), vec4<f32>(1554f, 581f, 770f, -661f)), vec4<bool>(true, true, true, false), -579f, 1839f)), select(i32(-1i) * -14140i, firstLeadingBit(3364i), true), -func_4(Struct_1(vec3<i32>(-1i, 15440i, -1i), vec4<i32>(-91323i, -1i, -1i, 6241i), vec4<f32>(659f, 132f, 1170f, -380f)), -370f, vec3<bool>(false, false, true), Struct_1(vec3<i32>(6385i, 2147483647i, -2147483647i), vec4<i32>(-1i, -1i, -17409i, -6171i), vec4<f32>(-2784f, -1000f, 1075f, 340f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-383f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-615f * 619f)), func_2(Struct_1(vec3<i32>(-1i, -2147483647i, -1i), vec4<i32>(-15616i, 1i, 0i, -1i), vec4<f32>(838f, -1099f, 1479f, -1009f)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -715f), _wgslsmith_f_op_f32(1358f * 536f)).c.x, _wgslsmith_f_op_f32(f32(-1f) * -1293f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1756f, 1000f, -1429f, _wgslsmith_f_op_f32(round(-326f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-423f, -847f, 551f, 277f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1288f, 399f, -662f, -469f) * vec4<f32>(198f, -1000f, -190f, 1451f))))));
    var var_1 = Struct_1(~(-max(abs(vec3<i32>(-41942i, 0i, var_0.b.x)), ~vec3<i32>(-1i, var_0.b.x, var_0.a.x))), var_0.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, 1000f, var_0.c.x, -1897f), var_0.c)), _wgslsmith_f_op_vec4_f32(sign(var_0.c)), all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))))))));
    let var_2 = firstTrailingBit(~(firstLeadingBit(~u_input.a.xz) ^ _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 1u), u_input.a.yy)));
    var var_3 = func_2(func_2(Struct_1(var_1.b.xyw, vec4<i32>(_wgslsmith_mult_i32(0i, 0i), i32(-1i) * -2147483647i, _wgslsmith_mult_i32(-13252i, var_0.b.x), var_1.a.x), var_1.c), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c.x, -1797f)) + var_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.c.x)) * _wgslsmith_f_op_f32(-var_1.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(198f + var_1.c.x)))), select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)), !(var_1.c.x == 1977f)), vec4<bool>(_wgslsmith_div_u32(var_2.x, 604u) > _wgslsmith_sub_u32(u_input.a.x, 0u), func_3(Struct_1(vec3<i32>(var_1.a.x, 1i, 0i), var_0.b, var_0.c), true, 1036u).x, -1i > ~var_0.b.x, all(vec2<bool>(false, true))), all(func_3(func_2(Struct_1(vec3<i32>(1i, -15634i, -2147483647i), vec4<i32>(0i, 2147483647i, var_0.a.x, 2147483647i), vec4<f32>(var_1.c.x, var_0.c.x, var_0.c.x, 145f)), vec4<bool>(true, true, false, true), -267f, -943f), true, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, var_2.x))))), _wgslsmith_f_op_f32(-func_2(Struct_1(var_1.a, vec4<i32>(1i, var_0.b.x, -54462i, -2147483647i), _wgslsmith_f_op_vec4_f32(-var_0.c)), vec4<bool>(true, true, true, all(vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(abs(var_0.c.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.c.x + var_1.c.x)))).c.x), -104f);
    var var_4 = false;
    let var_5 = func_2(func_2(func_2(func_2(func_2(Struct_1(var_0.b.xwx, var_3.b, vec4<f32>(352f, -373f, -1890f, var_1.c.x)), vec4<bool>(false, true, false, false), -601f, var_1.c.x), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)), -568f, -1216f), vec4<bool>(true, true, true, true), var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-928f)))), select(vec4<bool>(true, any(vec3<bool>(true, false, true)), true, true), vec4<bool>(true, true, true, any(vec2<bool>(true, false))), vec4<bool>(false, true, 13407i >= var_0.b.x, false)), _wgslsmith_f_op_f32(floor(var_1.c.x)), 1861f), select(vec4<bool>(!(var_0.a.x < -2147483647i), false, !any(vec2<bool>(false, true)), false), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), true), any(vec2<bool>(false, false))), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), true), false != all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(round(var_3.c.x)), 1201f);
    var_4 = (firstTrailingBit(~38075u) != u_input.a.x) | false;
    var_0 = func_2(Struct_1(~_wgslsmith_mult_vec3_i32(var_3.a, ~vec3<i32>(-1i, 25279i, var_3.a.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(var_3.b, vec4<i32>(11800i, 13332i, var_3.b.x, -2147483647i)), vec4<i32>(-9358i, -1i, -12889i, var_5.a.x) << (vec4<u32>(0u, 4294967295u, 7625u, u_input.a.x) % vec4<u32>(32u))) << (~firstLeadingBit(vec4<u32>(1u, 1u, var_2.x, var_2.x)) % vec4<u32>(32u)), var_1.c), vec4<bool>(all(vec3<bool>(false, true, false)), true, !(_wgslsmith_f_op_f32(-var_5.c.x) >= -926f), all(vec2<bool>(true, true))), -332f, var_0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(reverseBits((var_5.a << (u_input.a % vec3<u32>(32u))) << (_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(71567u, u_input.a.x, 47438u)) % vec3<u32>(32u))), vec3<i32>(25819i, func_2(var_5, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(trunc(-1514f)), _wgslsmith_f_op_f32(2411f - 721f)).a.x, _wgslsmith_add_i32(-var_3.a.x, var_0.a.x & var_1.b.x)), true), var_1.a.x);
}

