struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(false, false, true, true, true, true, false, true, false, true, true, true, false, true, false, false, false);

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(197f, vec3<i32>(-16499i, 1i, 3967i), vec4<bool>(false, false, true, true)), Struct_1(1000f, vec3<i32>(-1737i, 11548i, 10008i), vec4<bool>(true, false, false, false)), Struct_1(-1279f, vec3<i32>(1i, 0i, 14832i), vec4<bool>(true, true, false, true)), Struct_1(1677f, vec3<i32>(-1i, 2147483647i, 2147483647i), vec4<bool>(false, false, true, true)), Struct_1(-1199f, vec3<i32>(-1i, 12333i, i32(-2147483648)), vec4<bool>(false, false, true, false)), Struct_1(-384f, vec3<i32>(0i, 35320i, 73757i), vec4<bool>(true, false, true, true)), Struct_1(350f, vec3<i32>(-71272i, 31656i, i32(-2147483648)), vec4<bool>(false, false, true, false)), Struct_1(-127f, vec3<i32>(i32(-2147483648), 2147483647i, -23717i), vec4<bool>(false, true, true, true)), Struct_1(1000f, vec3<i32>(0i, -22663i, 71295i), vec4<bool>(false, true, true, false)), Struct_1(1439f, vec3<i32>(1703i, -1i, i32(-2147483648)), vec4<bool>(false, true, true, true)), Struct_1(-423f, vec3<i32>(-23142i, 37991i, -4137i), vec4<bool>(true, true, false, false)), Struct_1(-856f, vec3<i32>(2147483647i, 85288i, 0i), vec4<bool>(true, true, true, false)), Struct_1(343f, vec3<i32>(40042i, 43539i, 47281i), vec4<bool>(false, false, true, false)), Struct_1(-1095f, vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec4<bool>(false, true, true, true)), Struct_1(1602f, vec3<i32>(-819i, -1i, -20808i), vec4<bool>(true, true, false, false)), Struct_1(-202f, vec3<i32>(18210i, 60521i, i32(-2147483648)), vec4<bool>(true, false, true, true)), Struct_1(884f, vec3<i32>(2147483647i, 2147483647i, 49788i), vec4<bool>(true, true, false, false)), Struct_1(776f, vec3<i32>(2147483647i, 27160i, i32(-2147483648)), vec4<bool>(true, false, false, true)), Struct_1(-1513f, vec3<i32>(-74562i, i32(-2147483648), 3007i), vec4<bool>(false, true, true, true)), Struct_1(-1837f, vec3<i32>(2147483647i, -93680i, 0i), vec4<bool>(false, true, false, true)), Struct_1(1240f, vec3<i32>(1i, 50226i, -50783i), vec4<bool>(true, true, false, true)), Struct_1(1824f, vec3<i32>(i32(-2147483648), -7532i, 1i), vec4<bool>(false, true, true, true)), Struct_1(859f, vec3<i32>(0i, -14823i, 1i), vec4<bool>(false, true, true, true)), Struct_1(1088f, vec3<i32>(27660i, 1i, i32(-2147483648)), vec4<bool>(true, false, true, true)), Struct_1(-324f, vec3<i32>(2147483647i, 27150i, -93544i), vec4<bool>(true, false, false, false)), Struct_1(-500f, vec3<i32>(-9424i, -86033i, 1254i), vec4<bool>(true, false, true, false)));

var<private> global2: vec3<f32> = vec3<f32>(-231f, 1330f, 1586f);

var<private> global3: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(13231i, -51791i, 9992i), Struct_1(1360f, vec3<i32>(1i, -14517i, -9789i), vec4<bool>(true, false, true, false)), Struct_1(418f, vec3<i32>(-2539i, 15299i, i32(-2147483648)), vec4<bool>(false, true, false, true)), -570f), Struct_2(vec3<i32>(-24404i, 2147483647i, -17550i), vec3<i32>(-22312i, -1i, i32(-2147483648)), Struct_1(1162f, vec3<i32>(-1i, -30670i, 1i), vec4<bool>(false, true, false, false)), Struct_1(179f, vec3<i32>(9177i, -13786i, 87459i), vec4<bool>(false, false, false, true)), -279f), Struct_2(vec3<i32>(0i, 17623i, 1i), vec3<i32>(40566i, i32(-2147483648), 2147483647i), Struct_1(328f, vec3<i32>(1i, i32(-2147483648), 51690i), vec4<bool>(true, false, true, true)), Struct_1(-554f, vec3<i32>(1993i, -39931i, 1i), vec4<bool>(false, true, false, true)), -1330f), Struct_2(vec3<i32>(i32(-2147483648), 42837i, -885i), vec3<i32>(-47281i, -1i, 0i), Struct_1(-554f, vec3<i32>(2147483647i, -8179i, 0i), vec4<bool>(false, true, false, true)), Struct_1(1379f, vec3<i32>(i32(-2147483648), 0i, 20937i), vec4<bool>(true, true, true, true)), -1777f), Struct_2(vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(0i, 725i, 53053i), Struct_1(-676f, vec3<i32>(0i, 2706i, 2147483647i), vec4<bool>(false, false, false, true)), Struct_1(-727f, vec3<i32>(-238i, 22300i, 2147483647i), vec4<bool>(false, true, true, false)), 1000f), Struct_2(vec3<i32>(i32(-2147483648), -1i, 57412i), vec3<i32>(20932i, 2147483647i, -16945i), Struct_1(1007f, vec3<i32>(-26376i, 2147483647i, -12569i), vec4<bool>(false, false, false, true)), Struct_1(532f, vec3<i32>(16959i, -11396i, -28819i), vec4<bool>(true, false, true, true)), 923f), Struct_2(vec3<i32>(47424i, -7078i, -33560i), vec3<i32>(37243i, -9143i, -1i), Struct_1(-1189f, vec3<i32>(13668i, 2147483647i, -6701i), vec4<bool>(true, true, true, false)), Struct_1(-709f, vec3<i32>(i32(-2147483648), -37913i, 6225i), vec4<bool>(true, true, false, true)), -496f), Struct_2(vec3<i32>(-1i, 29017i, -1i), vec3<i32>(1i, -38645i, 4212i), Struct_1(-327f, vec3<i32>(-32275i, 2147483647i, -2180i), vec4<bool>(false, false, false, false)), Struct_1(643f, vec3<i32>(-1i, 1i, 2147483647i), vec4<bool>(true, true, true, true)), -899f));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.yyx), vec3<f32>(_wgslsmith_f_op_f32(step(global2.x, 639f)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x * -875f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1429f), 1000f, _wgslsmith_f_op_f32(arg_0.a - arg_0.a))))));
    var var_1 = Struct_5(vec4<i32>(43879i, (_wgslsmith_div_i32(-302i, -1i) ^ max(1i, arg_0.b.x)) << (8658u % 32u), _wgslsmith_div_i32(-2147483647i, _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, 37366i), ~arg_0.b.x)), _wgslsmith_dot_vec2_i32(max(arg_0.b.yz, vec2<i32>(-2147483647i, -2147483647i)), vec2<i32>(arg_0.b.x, firstTrailingBit(arg_0.b.x)))), -1118f, -_wgslsmith_add_vec4_i32(-max(vec4<i32>(arg_0.b.x, arg_0.b.x, 0i, arg_0.b.x), vec4<i32>(-23665i, arg_0.b.x, 0i, arg_0.b.x)), select(vec4<i32>(-1i, arg_0.b.x, -1i, arg_0.b.x), vec4<i32>(-2147483647i, -1i, 2147483647i, -2147483647i), vec4<bool>(arg_0.c.x, true, false, arg_0.c.x)) & -vec4<i32>(arg_0.b.x, 2147483647i, arg_0.b.x, -1i)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -522f), true)) * -1000f) - -302f);
    return arg_0.b.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_4) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, countOneBits(reverseBits(36089u)), 48461u), min(vec3<u32>(~(~20951u), ~1u, ~min(arg_1.a, 42786u)), ~(~(vec3<u32>(arg_1.a, 46452u, u_input.a) & vec3<u32>(6570u, arg_1.a, arg_1.a)))));
    var var_1 = vec2<u32>(u_input.a, min((58770u | u_input.a) & (var_0 & u_input.a), 0u)) | (vec2<u32>(7569u, _wgslsmith_sub_u32(7293u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 49376u)))) ^ vec2<u32>(4294967295u, ~var_0));
    var var_2 = -_wgslsmith_add_i32(_wgslsmith_mod_i32(func_3(Struct_1(343f, vec3<i32>(arg_1.d, arg_1.d, 2147483647i), arg_0), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 1000f, arg_1.e, global2.x), vec4<f32>(arg_1.e, 891f, -1766f, arg_1.b), arg_1.c))), func_3(Struct_1(arg_1.b, vec3<i32>(2147483647i, -1i, -2147483647i), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(269f, 974f, arg_1.b, 881f))))), 4713i);
    var var_3 = global2.yy;
    var var_4 = !(arg_1.c & true);
    return select(select(arg_0, vec4<bool>(true, false, arg_1.c, false), select(vec4<bool>(true, all(vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(12633u, 17u)])), true, 2147483647i == arg_1.d), !arg_0, arg_0)), !(!arg_0), !arg_1.c);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: f32) -> vec4<bool> {
    let var_0 = select(u_input.a, 1u, select(-10346i, arg_0.c.b.x, true) == (arg_2.b.x & arg_2.b.x));
    global0 = array<bool, 17>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-972f * -931f), arg_0.c.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.d.a)))))) - -649f);
    let var_2 = Struct_1(656f, arg_0.b >> (arg_1 % vec3<u32>(32u)), select(arg_0.d.c, !vec4<bool>(!arg_2.c.x, -1101f > arg_3, arg_0.d.c.x, global0[_wgslsmith_index_u32(~0u, 17u)]), select(vec4<bool>(arg_2.c.x, true, arg_2.c.x, all(vec4<bool>(arg_2.c.x, false, arg_2.c.x, false))), !arg_0.d.c, select(!arg_2.c, func_2(arg_0.c.c, Struct_4(8969u, arg_2.a, false, 1i, -198f)), true))));
    let var_3 = true;
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-110f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x + global2.x)) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1836f, global2.x, global2.x) + vec3<f32>(187f, 861f, global2.x))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-583f, global2.x, global2.x) - vec3<f32>(global2.x, 1000f, -427f)))))));
    var var_0 = all(select(func_1(Struct_2(-vec3<i32>(2147483647i, -2147483647i, -2147483647i), vec3<i32>(1i, 1i, 1i), Struct_1(global2.x, vec3<i32>(81254i, 2147483647i, -1i), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 17u)], false, global0[_wgslsmith_index_u32(0u, 17u)])), Struct_1(global2.x, vec3<i32>(-2147483647i, 0i, -2147483647i), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], false, global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(0u, 17u)])), -148f), select(vec3<u32>(1u, 0u, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], true)) << (vec3<u32>(u_input.a, 49868u, u_input.a) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(0u, 26u)], _wgslsmith_f_op_f32(f32(-1f) * -735f)), select(!(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)])), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 17u)], false, true), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)])), !(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 17u)], true))), select(func_2(select(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(20325u, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(3683u, 17u)], global0[_wgslsmith_index_u32(16867u, 17u)], false, global0[_wgslsmith_index_u32(1u, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], true, true, global0[_wgslsmith_index_u32(1601u, 17u)])), Struct_4(43506u, global2.x, true, 23121i, 1000f)), !func_2(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)], true), Struct_4(u_input.a, global2.x, true, -1i, global2.x)), vec4<bool>(false | global0[_wgslsmith_index_u32(u_input.a, 17u)], any(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 17u)], true)), true, !global0[_wgslsmith_index_u32(1u, 17u)]))));
    global0 = array<bool, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.x + global2.x), _wgslsmith_f_op_f32(step(global2.x, global2.x)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(-351f, -842f)))), vec4<f32>(global2.x, _wgslsmith_f_op_f32(-658f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x)))), global2.x, 1346f));
}

