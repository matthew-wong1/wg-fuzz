// {"0:0":[86,166,148,133,152,229,131,191,177,144,195,3,121,90,107,54,160,250,249,180,181,65,155,53,145,176,211,15,43,196,214,221,152,149,138,241,32,204,237,137,253,223,186,217,243,149,8,49,254,111,152,167,221,16,145,123,104,32,198,145,38,208,179,218]}
// Seed: 18190378478380274612

struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<i32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(-620i, i32(-2147483648)), vec2<i32>(18656i, 0i), vec2<i32>(5454i, 24378i), vec2<i32>(-9041i, 2147483647i), vec2<i32>(1i, 2147483647i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-25391i, 0i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(30503i, i32(-2147483648)), vec2<i32>(1i, 35570i), vec2<i32>(47751i, 22170i), vec2<i32>(13641i, i32(-2147483648)), vec2<i32>(-10613i, 1i), vec2<i32>(i32(-2147483648), -26018i), vec2<i32>(42211i, 32182i));

fn func_3() -> bool {
    let var_0 = Struct_3(Struct_2(Struct_1(true, select(vec4<i32>(u_input.d.x, u_input.a.x, 94797i, u_input.a.x) | u_input.a, u_input.a << vec4<u32>(0u, 20473u, 1u, 1u), true), ~vec2<u32>(1u, 0u) | clamp(vec2<u32>(0u, 1u), vec2<u32>(40037u, 58032u), vec2<u32>(4294967295u, 1u)), !global0.x), Struct_1(!(!false), vec4<i32>(i32(-2147483648), min(-43788i, u_input.a.x), countOneBits(u_input.c), u_input.d.x), ~(vec2<u32>(4294967295u, 66412u) + vec2<u32>(0u, 87987u)), false), Struct_1(global1.x | any(vec3<bool>(true, global0.x, false)), u_input.e, ~vec2<u32>(5536u, 4294967295u), !any(global0.zw)), vec4<u32>(0u * 0u, firstLeadingBit(1u), 55687u, 55502u) & vec4<u32>(max(0u, 1u), max(5051u, 1u), min(13697u, 0u), 0u)), firstLeadingBit(~(~(u_input.c | 1i))), ~u_input.d, Struct_2(Struct_1(any(!global0.zx), firstLeadingBit(vec4<i32>(u_input.b, 6637i, u_input.c, -2097i)), (vec2<u32>(54272u, 4294967295u) >> vec2<u32>(0u, 1608u)) ^ vec2<u32>(82160u, 0u), !global0.x), Struct_1(false, vec4<i32>(-2147483647i, u_input.d.x, -46079i, u_input.d.x + -53239i), vec2<u32>(37669u, 21627u + 13837u), (global1.x || global1.x) || any(vec2<bool>(global0.x, false))), Struct_1(global1.x, vec4<i32>(u_input.a.x, 1i, u_input.b, u_input.b) + vec4<i32>(u_input.a.x, u_input.e.x, u_input.a.x, u_input.c), ~vec2<u32>(45066u, 26601u) << ~vec2<u32>(3601u, 4294967295u), -264f > -1403f), vec4<u32>(42278u, dot(vec2<u32>(4620u, 5145u), vec2<u32>(26622u, 4294967295u)) + (0u & 0u), ~firstLeadingBit(22741u), ~134159u)), 942f);
    var var_1 = Struct_1(all(select(vec4<bool>(global1.x, !true, !global0.x, var_0.d.a.d), !vec4<bool>(var_0.a.a.a, true, global0.x, var_0.d.a.d), (var_0.d.c.c.x ^ var_0.d.a.c.x) >= ~var_0.a.b.c.x)), vec4<i32>(select(i32(-2147483648), ~clamp(-41869i, var_0.d.c.b.x, u_input.a.x), !(true & global1.x)), var_0.d.a.b.x, -21300i, -5889i), ~(var_0.a.a.c ^ vec2<u32>(57297u & var_0.a.a.c.x, var_0.a.c.c.x)), global1.x);
    var var_2 = all(global0.xzz);
    var var_3 = var_0;
    let var_4 = select(select(vec2<bool>(!all(vec4<bool>(false, false, true, var_1.a)), var_0.d.b.a), select(global0.zz, !(!vec2<bool>(var_3.d.b.d, var_0.d.a.a)), any(vec4<bool>(var_1.a, false, global1.x, true)) & var_3.d.b.a), vec2<bool>(!false, round(-721f) < 136f)), !global0.wz, global0.yy);
    return true;
}

fn func_2() -> u32 {
    global1 = !(!vec2<bool>(true, false));
    global1 = !(!global0.xz);
    return select(0u, 99919u, func_3()) - (0u * 0u);
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = ~(~vec3<u32>(48590u, func_2(), dot(countOneBits(vec3<u32>(47927u, 1u, 84302u)), countOneBits(vec3<u32>(0u, 1u, 57225u)))));
    global2 = array<vec2<i32>, 16>();
    global0 = vec4<bool>(!any(!global0.yy) | global1.x, all(vec3<bool>(false, global1.x, select(4294967295u, 1u, global0.x) != ~1u)), false | !false, (2147483647i % firstTrailingBit(~arg_0.x)) > (-arg_0.x % -(-1i & 1i)));
    return Struct_3(Struct_2(Struct_1((916f != -663f) && (global1.x | true), firstTrailingBit(vec4<i32>(8571i, -30193i, -1i, arg_0.x) / u_input.e), vec2<u32>(firstLeadingBit(var_0.x), abs(4294967295u)), any(vec2<bool>(global0.x, false))), Struct_1(any(select(vec4<bool>(true, true, global1.x, global0.x), vec4<bool>(global1.x, true, false, global1.x), true)), abs(vec4<i32>(arg_0.x, arg_0.x, -1i, 22738i)) ^ (vec4<i32>(arg_0.x, 15274i, arg_0.x, 3607i) % vec4<i32>(17544i, arg_0.x, u_input.e.x, -8609i)), vec2<u32>(var_0.x, var_0.x) + (vec2<u32>(var_0.x, var_0.x) | var_0.yy), true), Struct_1(1286f != (699f + -314f), select(u_input.a, vec4<i32>(2147483647i, 1i, arg_0.x, arg_0.x), !vec4<bool>(false, true, global1.x, global1.x)), var_0.yz, global1.x), max((vec4<u32>(4294967295u, 1u, 50598u, 53593u) | vec4<u32>(var_0.x, 1u, 76561u, 22057u)) & (vec4<u32>(var_0.x, var_0.x, 37682u, 30101u) ^ vec4<u32>(26993u, 4294967295u, 4294967295u, 7683u)), vec4<u32>(var_0.x & 1u, ~23068u, 1u ^ var_0.x, var_0.x))), ~arg_0.x, arg_0, Struct_2(Struct_1(!global1.x, u_input.e, ~var_0.yy, global1.x), Struct_1(!(true & true), -u_input.e, select(firstLeadingBit(vec2<u32>(var_0.x, 23760u)), var_0.yz | var_0.yx, !global1.x), false), Struct_1(global1.x, u_input.e, var_0.zy, false), ~(min(vec4<u32>(var_0.x, 4294967295u, 52250u, var_0.x), vec4<u32>(var_0.x, 59276u, var_0.x, var_0.x)) | ~vec4<u32>(var_0.x, var_0.x, 19278u, var_0.x))), 1853f);
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = ~(~(~arg_0.a.b.c.x));
    var var_1 = Struct_3(Struct_2(arg_0.a.b, func_1(~vec3<i32>(0i, arg_0.c.x, arg_0.c.x) << (arg_0.d.d.wzx * arg_0.a.d.xyx)).a.c, func_1(~select(u_input.d, arg_0.a.b.b.zyy, false)).a.b, max(vec4<u32>(var_0 ^ arg_0.a.d.x, dot(arg_0.d.d.zwz, vec3<u32>(arg_0.a.c.c.x, arg_0.d.b.c.x, arg_0.d.c.c.x)), ~arg_0.d.a.c.x, 1u), min(vec4<u32>(var_0, 0u, var_0, 1253u) * arg_0.d.d, vec4<u32>(arg_0.d.a.c.x, 4294967295u, arg_0.d.b.c.x, 3180u) % vec4<u32>(arg_0.d.b.c.x, var_0, 0u, 0u)))), 2147483647i, u_input.d, arg_0.a, -trunc(floor(-700f) / (arg_0.e / arg_0.e)));
    var var_2 = 1413f;
    let var_3 = -1635i;
    let var_4 = ~vec2<u32>(firstLeadingBit(~25085u % 11844u), 1u << ((var_0 + 9851u) & ~2356u));
    return Struct_1(true, -(-((vec4<i32>(var_1.d.b.b.x, -27666i, -31736i, -1i) & vec4<i32>(var_1.a.b.b.x, u_input.c, -19893i, var_3)) + -vec4<i32>(arg_0.a.a.b.x, var_1.c.x, var_1.b, 17923i))), max(vec2<u32>(1u, arg_0.a.d.x) + arg_0.d.c.c, ~(~(vec2<u32>(var_0, 4294967295u) << vec2<u32>(var_4.x, var_1.d.d.x)))), false);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = func_1(func_1(arg_1.b.zyx).c).d.a.c.x;
    global2 = array<vec2<i32>, 16>();
    var var_1 = vec3<i32>(arg_1.b.x, -4185i - ~arg_2.x, 2147483647i) | u_input.a.yyw;
    var var_2 = (48151u ^ ~(~arg_0)) / dot(vec3<u32>(arg_1.c.x, 25741u, ~4294967295u), vec3<u32>((arg_0 - arg_0) + 2582u, 0u, max(4294967295u, ~14044u)));
    let var_3 = func_1(func_4(func_1(min(u_input.e.yyw, u_input.e.ywx))).b.xxz << min(~(~vec3<u32>(0u, 4294967295u, var_0)), ~(vec3<u32>(0u, 93579u, var_0) % vec3<u32>(0u, arg_0, 57842u)))).a;
    return func_1(var_3.c.b.wzw);
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    let var_0 = abs(vec3<f32>(1000f, arg_0.e, arg_0.e));
    var var_1 = vec2<u32>(arg_0.d.d.x / ~arg_0.d.a.c.x, (~0u * func_4(Struct_3(arg_0.d, u_input.e.x, vec3<i32>(arg_0.c.x, 39697i, -1i), Struct_2(arg_0.a.a, arg_0.d.a, Struct_1(global1.x, u_input.e, vec2<u32>(arg_0.a.c.c.x, arg_0.d.d.x), true), vec4<u32>(42934u, arg_0.d.a.c.x, arg_0.d.b.c.x, arg_0.a.b.c.x)), var_0.x)).c.x) + firstTrailingBit(arg_0.a.d.x / arg_0.d.a.c.x)) % arg_0.d.a.c;
    global0 = !vec4<bool>(arg_0.a.b.a, !(!(0u != 40096u)), global1.x, !(!false | !global0.x));
    global1 = select(global0.yx, !vec2<bool>(arg_0.a.a.a, arg_0.a.a.a), !vec2<bool>(!global1.x & !false, arg_0.a.b.a));
    let var_2 = func_5(~(~(0u / 90036u)), func_5(var_1.x, func_1(vec3<i32>(u_input.a.x, arg_0.b, i32(-2147483648))).d.a, arg_0.d.c.b.yw << reverseBits(vec2<u32>(10861u, 8461u)), !(!global0.zz)).d.a, select(min(u_input.e.zz, u_input.d.yy) << select(vec2<u32>(arg_0.d.d.x, 50575u), vec2<u32>(var_1.x, 45281u), false), max(vec2<i32>(0i, i32(-2147483648)), min(vec2<i32>(2147483647i, arg_0.c.x), u_input.a.zy)), false & false), vec2<bool>(func_1(arg_0.a.b.b.xzw).d.b.a, func_3())).e + -min(max(1785f, var_0.x) / (-697f / 1435f), var_0.x);
    return arg_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(~0u << ~(~93034u), func_4(func_1(vec3<i32>(-1i, u_input.a.x, 2147483647i) & u_input.d)), vec2<i32>(u_input.a.x, u_input.e.x), global0.yw));
    let var_1 = Struct_2(Struct_1(global0.x, (~vec4<i32>(var_0.b.x, u_input.c, var_0.b.x, 25998i) << vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)) % func_1(vec3<i32>(2147483647i, var_0.b.x, 26494i)).d.a.b, vec2<u32>(0u >> (var_0.c.x & 1u), var_0.c.x), global1.x), Struct_1(true, vec4<i32>(-var_0.b.x | -22079i, u_input.e.x, -497i, max(i32(-2147483648), firstLeadingBit(-57756i))), select(~var_0.c % ~var_0.c, (vec2<u32>(4294967295u, var_0.c.x) ^ vec2<u32>(var_0.c.x, var_0.c.x)) ^ countOneBits(vec2<u32>(0u, var_0.c.x)), vec2<bool>(-1165f >= -825f, var_0.a)), all(vec2<bool>(!global1.x, false | true))), Struct_1(false, ((vec4<i32>(2147483647i, i32(-2147483648), var_0.b.x, var_0.b.x) | var_0.b) - (vec4<i32>(2147483647i, -4949i, 32078i, var_0.b.x) >> vec4<u32>(45771u, 18839u, var_0.c.x, 0u))) | vec4<i32>(-40824i, u_input.e.x, ~u_input.e.x, max(var_0.b.x, var_0.b.x)), vec2<u32>(0u ^ (1u & 57839u), select(var_0.c.x * 24869u, 0u, !false)), !(!global1.x)), ~(~(~firstTrailingBit(vec4<u32>(4294967295u, 31874u, var_0.c.x, 39239u)))));
    var var_2 = var_0.c.x > var_1.c.c.x;
    global0 = select(vec4<bool>(trunc(-801f) > -(-1087f), global1.x, !any(select(vec4<bool>(var_0.d, false, false, false), vec4<bool>(var_1.a.a, var_0.d, global1.x, global1.x), false)), false), !select(!(!vec4<bool>(global0.x, var_1.c.a, true, global0.x)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, var_0.d, true), vec4<bool>(false, global1.x, global0.x, var_0.a)), select(vec4<bool>(global1.x, false, var_0.a, false), vec4<bool>(false, false, false, var_0.d), false), global1.x), select(select(vec4<bool>(true, true, global0.x, var_1.b.d), vec4<bool>(var_1.c.d, global1.x, true, var_0.d), false), !vec4<bool>(false, var_1.a.d, var_1.b.d, true), global1.x || true)), select(!vec4<bool>(func_6(Struct_3(var_1, -34296i, var_0.b.xyw, Struct_2(var_1.a, var_1.a, Struct_1(false, u_input.e, var_0.c, var_0.a), vec4<u32>(26996u, var_1.d.x, var_0.c.x, 1u)), 1163f)).a, func_6(Struct_3(var_1, var_0.b.x, var_0.b.xzx, Struct_2(Struct_1(global0.x, vec4<i32>(var_1.a.b.x, 2147483647i, 1i, 15164i), var_1.a.c, true), var_1.a, Struct_1(global1.x, vec4<i32>(2147483647i, var_0.b.x, var_0.b.x, u_input.c), vec2<u32>(1u, var_1.b.c.x), false), var_1.d), -830f)).a, !true, all(global0.xx)), !select(select(vec4<bool>(true, var_0.d, true, true), vec4<bool>(true, false, false, var_0.d), vec4<bool>(var_0.a, false, global1.x, false)), !vec4<bool>(var_1.a.d, true, global0.x, true), !var_1.b.a), true));
    let var_3 = Struct_1(!false, vec4<i32>(firstLeadingBit(6739i), (0i % var_1.c.b.x) ^ (0i ^ i32(-2147483648)), ~u_input.e.x, var_1.b.b.x) ^ u_input.a, firstLeadingBit(~var_1.a.c), !(any(!vec4<bool>(global1.x, var_0.a, global1.x, var_1.b.a)) && var_0.d));
    let var_4 = !(!(!var_1.b.d));
    global1 = global0.xz;
    var_0 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

