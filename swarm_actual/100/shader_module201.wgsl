// {"0:0":[242,217,39,181,115,229,119,212,71,239,217,3,205,79,157,139]}
// Seed: 14059908051587241332

struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec2<bool>, 11>;

var<private> global2: Struct_2 = Struct_2(vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec3<f32>(-604f, 228f, -642f), 6879u, Struct_1(2147483647i, vec4<bool>(false, true, false, true), vec4<i32>(-13099i, -35895i, 2147483647i, -1i), -1000f, 1285f));

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> vec4<f32> {
    let var_0 = vec2<i32>(-arg_3, 2147483647i);
    var var_1 = ~(~dot(arg_0.xxz, abs(~arg_0.wzx)));
    var_1 = 0u;
    var var_2 = -9206i & clamp(((u_input.a.x + u_input.a.x) & i32(-2147483648)) * max(max(2147483647i, -1i), -(-879i)), arg_3, min(arg_3, abs(abs(u_input.a.x))));
    var var_3 = arg_3 + ~(-abs(dot(global2.d.c.ww, var_0)));
    return vec4<f32>(global2.b.x, global2.b.x, -(-1203f), arg_2.e);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: f32) -> vec3<u32> {
    var var_0 = arg_0.c.c.b.x;
    var var_1 = (abs(arg_0.d.a) - select(arg_0.d.a, arg_0.c.e.c.www * (arg_0.a.xyx ^ arg_0.c.e.c.zxw), global2.d.b.zyw)) - (abs(u_input.a.xzw) % (u_input.a.wxw * -vec3<i32>(2147483647i, global2.a.x, 2147483647i)));
    var var_2 = vec3<bool>(false, 0u > ((arg_0.d.c & global2.c) - (global2.c >> 0u)), all(!arg_0.c.c.b));
    let var_3 = -(-(-(-(140f / 1000f))));
    var var_4 = vec3<bool>(!(!((18981u != arg_0.d.c) || (4294967295u < arg_0.d.c))), !arg_0.c.c.b.x && true, any(select(!global2.d.b.xxy, vec3<bool>(any(vec2<bool>(false, false)), false, -1057f < 1762f), !all(vec4<bool>(var_2.x, var_2.x, global2.d.b.x, false)))));
    return ~(~(~((vec3<u32>(15156u, 7269u, arg_0.d.c) - vec3<u32>(arg_0.d.c, 14439u, 0u)) >> (vec3<u32>(9378u, 35091u, arg_0.d.c) << vec3<u32>(31049u, 5547u, 2258u)))));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_4) -> bool {
    let var_0 = Struct_4(global2.d.c, -26808i, Struct_3(clamp(vec2<i32>(53939i ^ -49401i, arg_2.a.x ^ i32(-2147483648)), vec2<i32>(clamp(u_input.a.x, u_input.a.x, i32(-2147483648)), arg_2.a.x | global2.d.a), select(global2.a.yz, clamp(u_input.a.yz, arg_2.d.d.c.zy, global2.a.xx), select(global2.d.b.wy, arg_0.xz, vec2<bool>(false, false)))), u_input.a, Struct_1(~global2.d.c.x * firstTrailingBit(16293i), !vec4<bool>(global2.d.b.x, true, arg_2.d.d.b.x, true), ~(~vec4<i32>(-1i, -16020i, -1i, arg_2.b)), -(-(-2315f)), round(arg_2.d.b.x) * -371f), vec3<bool>(countOneBits(114500u) < (33096u >> 155262u), !any(vec4<bool>(arg_2.c.c.b.x, global2.d.b.x, true, true)), false), Struct_1(-arg_2.c.e.c.x, vec4<bool>(arg_0.x || arg_2.d.d.b.x, arg_2.d.d.b.x, any(vec3<bool>(arg_0.x, true, false)), arg_2.d.c == 1u), select(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, -1i, 2147483647i), !arg_0.x), 532f, arg_2.d.d.d / max(global2.b.x, 535f))), arg_2.d);
    global1 = array<vec2<bool>, 11>();
    global1 = array<vec2<bool>, 11>();
    global2 = var_0.d;
    let var_1 = arg_2.b;
    return false;
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = func_5(vec3<bool>(true, global2.d.b.x, global2.d.b.x), func_4(Struct_4(u_input.a, global2.a.x, Struct_3(vec2<i32>(global2.d.a, u_input.a.x), vec4<i32>(global2.a.x, global2.a.x, global2.a.x, i32(-2147483648)), Struct_1(u_input.a.x, global2.d.b, u_input.a, 2855f, -370f), global2.d.b.ywz, global2.d), Struct_2(global2.d.c.xzw, global2.b, global2.c, Struct_1(-1i, vec4<bool>(false, false, global2.d.b.x, true), u_input.a, -212f, -1910f))), (vec4<f32>(global2.b.x, -254f, 359f, 472f) * vec4<f32>(global2.d.e, global2.d.d, -780f, global2.b.x)) + func_3(vec4<u32>(72207u, 6795u, global2.c, 1u), global2.c, Struct_1(9404i, vec4<bool>(false, global2.d.b.x, true, global2.d.b.x), vec4<i32>(-1i, 0i, global2.d.a, -13948i), global2.d.d, -392f), 32258i), -sign(global2.d.e)), Struct_4(firstTrailingBit(firstLeadingBit(vec4<i32>(1i, -1i, arg_0, 1205i))), arg_0, Struct_3(vec2<i32>(global2.a.x, u_input.a.x), global2.d.c, global2.d, global2.d.b.yzx, global2.d), Struct_2(vec3<i32>(global2.d.c.x, i32(-2147483648), -1i) << vec3<u32>(7095u, global2.c, 4294967295u), global2.b, global2.c << 4294967295u, global2.d))) && false;
    let var_1 = Struct_3(~firstTrailingBit(vec2<i32>(global2.a.x | global2.d.c.x, global2.d.c.x / global2.a.x)), ~(min(vec4<i32>(-48969i, 28784i, -41729i, global2.a.x), vec4<i32>(0i, 1i, 2147483647i, global2.a.x)) | (min(vec4<i32>(arg_0, 1i, 2147483647i, arg_0), vec4<i32>(0i, 0i, u_input.a.x, 2147483647i)) * u_input.a)), Struct_1(~global2.a.x, select(select(vec4<bool>(true, true, false, global2.d.b.x), global2.d.b, global2.d.b), vec4<bool>(all(global2.d.b), var_0, true, var_0 && false), global2.d.b.x), vec4<i32>(min(global2.a.x, u_input.a.x) - clamp(8703i, 2147483647i, u_input.a.x), u_input.a.x, u_input.a.x, dot(vec2<i32>(44990i, u_input.a.x) % u_input.a.wx, global2.d.c.zx)), global2.b.x, 607f), global2.d.b.yzz, Struct_1(-6979i, !global2.d.b, vec4<i32>(arg_0, -1i, i32(-2147483648) << global2.c, 533i) & (u_input.a | u_input.a), round(global2.b.x), step(sign(499f), select(global2.b.x, global2.d.d, global2.d.b.x)) + -934f));
    global1 = array<vec2<bool>, 11>();
    global2 = Struct_2(-(countOneBits(vec3<i32>(6045i, -29405i, 54920i)) | vec3<i32>(2147483647i & 20017i, u_input.a.x + u_input.a.x, firstTrailingBit(global2.a.x))), vec3<f32>(var_1.e.e, sign((var_1.e.e - 246f) + (global2.d.e - global2.d.e)), -(622f / 1000f)), min(~0u - ~global2.c, reverseBits(global2.c)) << 0u, global2.d);
    global0 = abs(global2.c);
    return ~(-(-global2.a.x % min(dot(vec4<i32>(0i, u_input.a.x, var_1.b.x, global2.d.c.x), global2.d.c), arg_0)));
}

fn func_6(arg_0: vec3<i32>, arg_1: f32) -> Struct_2 {
    var var_0 = dot(-(-max(u_input.a.zx / vec2<i32>(0i, u_input.a.x), arg_0.zx)), global2.d.c.zy);
    global2 = Struct_2(~(-global2.d.c.zxz), step(vec3<f32>((arg_1 + global2.b.x) - global2.b.x, -(1041f - -1204f), -183f / -(-292f)), vec3<f32>(-241f, 444f, round(step(-1341f, -1512f)))), 0u, global2.d);
    var var_1 = 292f;
    var var_2 = vec4<bool>(false, true, !func_5(global2.d.b.zzy, abs(vec3<u32>(1u, 0u, 0u) | vec3<u32>(global2.c, global2.c, 8970u)), Struct_4(vec4<i32>(global2.d.c.x, global2.a.x, arg_0.x, global2.d.a), 11130i, Struct_3(vec2<i32>(arg_0.x, arg_0.x), vec4<i32>(-5921i, 31652i, global2.a.x, u_input.a.x), Struct_1(-29131i, global2.d.b, u_input.a, -1000f, -1000f), vec3<bool>(global2.d.b.x, false, false), global2.d), Struct_2(global2.d.c.wyx, global2.b, 0u, Struct_1(global2.d.c.x, vec4<bool>(true, global2.d.b.x, true, global2.d.b.x), global2.d.c, -1101f, 415f)))), !all(global2.d.b.xxw) & !false);
    let var_3 = i32(-2147483648);
    return Struct_2(global2.a | vec3<i32>(firstTrailingBit(reverseBits(global2.d.c.x)), i32(-2147483648), -(i32(-2147483648))), global2.b, ~countOneBits((global2.c | global2.c) + ~16147u), global2.d);
}

fn func_7(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec3<u32>) -> Struct_2 {
    global2 = func_6(arg_2.e.c.xxz, (-(-291f) * arg_0.d.e) * ((min(arg_0.b.x, global2.b.x) / (-424f * arg_2.e.e)) * 893f));
    let var_0 = global2.d.b.yw;
    global0 = 1u;
    global2 = arg_0;
    var var_1 = func_6(((func_6(arg_0.a, global2.d.d).d.c.zzx >> ~arg_3) >> (~vec3<u32>(arg_3.x, 0u, 36375u) / (vec3<u32>(4294967295u, 0u, 4294967295u) / vec3<u32>(4294967295u, global2.c, arg_3.x)))) << (vec3<u32>(arg_0.c - global2.c, 0u, min(0u, arg_0.c)) << firstLeadingBit(firstTrailingBit(vec3<u32>(arg_0.c, global2.c, arg_0.c)))), 614f);
    return func_6(min(-vec3<i32>(global2.a.x, 2954i | 64235i, func_2(arg_0.d.c.x)), firstTrailingBit(abs(vec3<i32>(u_input.a.x, arg_2.e.a, arg_2.a.x)))), -1501f);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: u32) -> i32 {
    let var_0 = u_input.a;
    let var_1 = func_7(func_6(vec3<i32>(func_2(0i), 1i % (-53559i - global2.d.a), -select(26318i, 51910i, true)), -2330f), !(!func_6(vec3<i32>(global2.a.x, -36484i, 2147483647i) ^ vec3<i32>(0i, global2.a.x, 1i), arg_1.x * arg_1.x).d.b.zzw), Struct_3((vec2<i32>(u_input.a.x, var_0.x) & u_input.a.ww) >> vec2<u32>(0u, 0u), global2.d.c * max(-u_input.a, vec4<i32>(var_0.x, 1i, global2.a.x, var_0.x)), func_6(-var_0.xzw - (vec3<i32>(52137i, u_input.a.x, var_0.x) & global2.a), min(max(2247f, arg_1.x), 1062f)).d, select(!select(vec3<bool>(arg_0.x, false, true), vec3<bool>(global2.d.b.x, global2.d.b.x, arg_0.x), vec3<bool>(arg_0.x, global2.d.b.x, arg_0.x)), arg_0.yyy, vec3<bool>(arg_0.x, false, arg_0.x)), func_6(~vec3<i32>(1i, 19703i, global2.d.c.x) | vec3<i32>(u_input.a.x, -1i, global2.a.x), (-396f * global2.b.x) + -461f).d), ~vec3<u32>(arg_2 ^ 4294967295u, 34605u, abs(firstTrailingBit(arg_2))));
    global2 = var_1;
    let var_2 = -(arg_1 * step(var_1.b.xx, max(vec2<f32>(-515f, var_1.b.x) + vec2<f32>(arg_1.x, 1309f), vec2<f32>(-536f, arg_1.x))));
    var var_3 = ~vec4<u32>(~var_1.c, ~(var_1.c * global2.c) / (~arg_2 * var_1.c), arg_2, firstLeadingBit(87638u));
    return func_6(var_1.a, 709f).d.a % (global2.a.x & func_2(85511i));
}

fn func_8(arg_0: i32, arg_1: vec2<f32>, arg_2: i32, arg_3: vec3<bool>) -> Struct_3 {
    let var_0 = arg_3.x;
    let var_1 = vec4<bool>(arg_1.x < (sign(arg_1.x + -1682f) / arg_1.x), func_5(arg_3, ~(~max(vec3<u32>(4501u, 29992u, global2.c), vec3<u32>(0u, 35159u, 50994u))), Struct_4(u_input.a, 0i, Struct_3(vec2<i32>(arg_0, -1i), global2.d.c, global2.d, global2.d.b.xyz, global2.d), Struct_2(global2.d.c.wzw, vec3<f32>(arg_1.x, global2.b.x, global2.b.x) - global2.b, global2.c, func_7(Struct_2(vec3<i32>(15647i, u_input.a.x, global2.d.c.x), global2.b, global2.c, global2.d), arg_3, Struct_3(vec2<i32>(arg_0, -1i), vec4<i32>(-28880i, 10820i, -13337i, arg_0), global2.d, global2.d.b.xzw, Struct_1(arg_2, global2.d.b, vec4<i32>(arg_0, 6028i, u_input.a.x, arg_2), -1106f, global2.b.x)), vec3<u32>(global2.c, global2.c, global2.c)).d))), false, !false & all(vec4<bool>(!global2.d.b.x, var_0 & true, !global2.d.b.x, all(vec3<bool>(arg_3.x, var_0, arg_3.x)))));
    let var_2 = func_3((select(min(vec4<u32>(62177u, global2.c, global2.c, global2.c), vec4<u32>(4294967295u, 4294967295u, 25273u, global2.c)), ~vec4<u32>(43740u, global2.c, 1u, 0u), func_5(global2.d.b.zwy, vec3<u32>(global2.c, 1u, 1u), Struct_4(vec4<i32>(7210i, 0i, global2.a.x, -11964i), global2.a.x, Struct_3(u_input.a.yz, vec4<i32>(global2.d.c.x, arg_2, u_input.a.x, global2.a.x), Struct_1(1i, vec4<bool>(var_0, false, false, false), u_input.a, -341f, arg_1.x), vec3<bool>(var_1.x, global2.d.b.x, arg_3.x), Struct_1(-1i, global2.d.b, vec4<i32>(i32(-2147483648), -1i, -48975i, arg_0), global2.d.e, 572f)), Struct_2(vec3<i32>(u_input.a.x, global2.d.c.x, i32(-2147483648)), global2.b, 762u, global2.d)))) & vec4<u32>(func_7(Struct_2(vec3<i32>(u_input.a.x, 19231i, arg_0), global2.b, global2.c, global2.d), vec3<bool>(arg_3.x, false, var_1.x), Struct_3(vec2<i32>(global2.d.c.x, 2147483647i), vec4<i32>(arg_0, 19019i, arg_2, arg_2), Struct_1(arg_2, global2.d.b, u_input.a, global2.d.d, -316f), arg_3, global2.d), vec3<u32>(89870u, 4294967295u, global2.c)).c, ~global2.c, global2.c, global2.c)) / vec4<u32>(max(11262u, global2.c) << 4294967295u, 11011u, 4294967295u, func_7(Struct_2(vec3<i32>(1i, global2.d.a, u_input.a.x), global2.b, 4294967295u, global2.d), global2.d.b.xyx, Struct_3(global2.d.c.xy, u_input.a, Struct_1(global2.a.x, vec4<bool>(global2.d.b.x, arg_3.x, global2.d.b.x, arg_3.x), global2.d.c, arg_1.x, 322f), global2.d.b.xyx, Struct_1(u_input.a.x, var_1, global2.d.c, 569f, arg_1.x)), vec3<u32>(global2.c, 1u, 0u)).c << (26116u / global2.c)), global2.c, global2.d, select(-31744i, arg_2, func_7(Struct_2(firstTrailingBit(vec3<i32>(-30396i, u_input.a.x, global2.d.c.x)), global2.b, 40463u, func_6(global2.d.c.xwy, -1000f).d), !global2.d.b.zzw, Struct_3(func_6(vec3<i32>(arg_0, global2.d.a, global2.a.x), 2196f).d.c.yy, global2.d.c, Struct_1(arg_0, vec4<bool>(var_0, false, false, false), u_input.a, -1132f, -125f), vec3<bool>(true, true, arg_3.x), Struct_1(41872i, vec4<bool>(true, false, arg_3.x, false), vec4<i32>(54542i, 2147483647i, 33316i, arg_0), arg_1.x, global2.d.d)), countOneBits(vec3<u32>(1u, global2.c, 69061u))).d.b.x));
    global0 = 75763u ^ 81020u;
    var var_3 = Struct_1(i32(-2147483648), vec4<bool>(false, var_1.x, !any(vec3<bool>(true, true, arg_3.x)), var_0), select(~(~abs(vec4<i32>(u_input.a.x, -1i, global2.a.x, global2.d.c.x))), global2.d.c, -1i >= ~(~u_input.a.x)), func_3(~select(vec4<u32>(global2.c, global2.c, 4294967295u, global2.c), vec4<u32>(global2.c, global2.c, global2.c, 4294967295u), global2.d.b.x) >> (abs(vec4<u32>(global2.c, global2.c, global2.c, 40470u)) % vec4<u32>(global2.c, global2.c, 0u, global2.c)), 51089u, global2.d, -reverseBits(i32(-2147483648))).x, -(trunc(-(-907f)) / func_6(firstTrailingBit(u_input.a.xwz), sign(var_2.x)).b.x));
    return Struct_3((select(u_input.a.yx + u_input.a.yw, clamp(vec2<i32>(global2.d.c.x, arg_0), var_3.c.zw, global2.a.xy), global2.d.b.ww) / ~(vec2<i32>(arg_0, -3250i) >> vec2<u32>(4294967295u, global2.c))) + abs(u_input.a.wx), func_7(func_6(vec3<i32>(-91068i, func_1(var_1, var_2.xw, global2.c), i32(-2147483648)), -337f), var_3.b.yyy, Struct_3(var_3.c.yx - firstTrailingBit(u_input.a.zz), vec4<i32>(-var_3.a, firstTrailingBit(arg_2), global2.a.x, var_3.a >> 0u), global2.d, arg_3, global2.d), select(vec3<u32>(global2.c - global2.c, 1u - global2.c, 29014u), ~vec3<u32>(global2.c, global2.c, global2.c) / ~vec3<u32>(global2.c, global2.c, 6908u), true)).d.c, Struct_1(u_input.a.x, vec4<bool>(select(var_1.x, true, all(vec3<bool>(var_1.x, var_0, false))), ~25003u <= ~23u, arg_3.x, func_6(u_input.a.wyw, arg_1.x).d.b.x), clamp(~select(u_input.a, vec4<i32>(1i, -46072i, 53855i, arg_0), true), -(vec4<i32>(2147483647i, -65897i, 53744i, var_3.c.x) / vec4<i32>(12692i, global2.d.c.x, -56420i, u_input.a.x)), vec4<i32>(clamp(28717i, u_input.a.x, 0i), -1i, var_3.a, func_2(arg_2))), trunc(-arg_1.x), func_3(~(~vec4<u32>(4294967295u, global2.c, global2.c, global2.c)), dot(~vec3<u32>(global2.c, global2.c, 1u), vec3<u32>(global2.c, global2.c, 0u)), Struct_1(countOneBits(u_input.a.x), select(var_1, var_3.b, arg_3.x), vec4<i32>(global2.a.x, -842i, 1i, global2.d.c.x) % global2.d.c, var_2.x, -global2.b.x), -2590i).x), vec3<bool>(arg_3.x, global2.d.b.x, ~(i32(-2147483648) & arg_2) <= ~(-25859i)), Struct_1(-9472i, global2.d.b, (vec4<i32>(arg_2, arg_0, 1i, -1i) << select(vec4<u32>(4294967295u, 4294967295u, global2.c, global2.c), vec4<u32>(0u, 42907u, 9954u, global2.c), global2.d.b)) - select(u_input.a / vec4<i32>(arg_0, global2.d.c.x, global2.a.x, -29347i), max(var_3.c, var_3.c), global2.d.b.x), -(-(global2.b.x * global2.d.d)), var_2.x));
}

fn func_9(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: bool, arg_3: i32) -> Struct_3 {
    var var_0 = arg_0;
    var var_1 = !global1[arg_0.d.c >> ((~arg_0.d.c | global2.c) & ~global2.c)];
    var_1 = vec2<bool>(!all(func_8(-3925i, vec2<f32>(-1292f, 665f) / vec2<f32>(arg_1.x, -2249f), arg_3 + global2.d.a, !vec3<bool>(arg_0.c.d.x, arg_2, false)).c.b.yz), false);
    let var_2 = func_6(u_input.a.xyw, -(exp2(-1909f) - -arg_0.c.c.d) * arg_1.x).d;
    var var_3 = Struct_1(-(i32(-2147483648) & global2.a.x), var_0.c.c.b, -((vec4<i32>(var_0.d.a.x, -1i, arg_0.d.a.x, 1i) ^ vec4<i32>(15434i, u_input.a.x, u_input.a.x, var_2.c.x)) - vec4<i32>(0i, 1i, 0i, 7307i)) << (vec4<u32>(~4294967295u, global2.c, ~arg_0.d.c, dot(vec3<u32>(var_0.d.c, 29910u, 30417u), vec3<u32>(1u, arg_0.d.c, var_0.d.c))) * (~vec4<u32>(13085u, 0u, var_0.d.c, global2.c) * abs(vec4<u32>(11323u, 0u, 4294967295u, 798u)))), -floor(arg_1.x), -(-exp2(var_0.c.e.e)));
    return func_8(abs(2147483647i), vec2<f32>((-(-904f) / func_6(var_3.c.yzz, -1410f).d.e) / 1000f, 211f), ~func_1(!arg_0.d.d.b, -vec2<f32>(arg_1.x, arg_1.x), abs(global2.c) >> dot(vec2<u32>(var_0.d.c, 0u), vec2<u32>(arg_0.d.c, 4294967295u))), vec3<bool>(any(func_6(var_3.c.xxy, var_2.e).d.b), !var_0.d.d.b.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_9(Struct_4(abs(global2.d.c % ~u_input.a), ~clamp(~7930i, -62991i, -(-9287i)), func_8(clamp(-18331i, 31235i, func_1(vec4<bool>(false, global2.d.b.x, global2.d.b.x, global2.d.b.x), vec2<f32>(global2.b.x, 1299f), 43458u)), vec2<f32>(1000f, global2.d.e - global2.b.x), ~(~u_input.a.x), select(global2.d.b.wyw, !vec3<bool>(true, true, true), global2.d.b.xyw)), func_6(global2.a, (global2.d.e - 936f) / global2.b.x)), -vec3<f32>(-235f, global2.b.x, -359f + floor(global2.b.x)), select(reverseBits(global2.c) > dot(select(vec2<u32>(global2.c, global2.c), vec2<u32>(91817u, global2.c), false), vec2<u32>(global2.c, 1u)), !func_5(global2.d.b.zyw, vec3<u32>(global2.c, global2.c, global2.c), Struct_4(vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 22381i), u_input.a.x, Struct_3(vec2<i32>(global2.a.x, global2.d.a), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -30209i), global2.d, vec3<bool>(true, true, global2.d.b.x), Struct_1(u_input.a.x, global2.d.b, vec4<i32>(u_input.a.x, -11717i, global2.d.c.x, 0i), global2.b.x, global2.b.x)), Struct_2(vec3<i32>(u_input.a.x, 1i, 2147483647i), global2.b, global2.c, Struct_1(-1i, global2.d.b, vec4<i32>(2147483647i, global2.a.x, global2.a.x, global2.d.c.x), global2.d.d, -154f)))) == !global2.d.b.x, func_7(Struct_2(u_input.a.wzz | global2.a, global2.b + vec3<f32>(-988f, 1791f, global2.b.x), global2.c * 11631u, Struct_1(965i, global2.d.b, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), global2.b.x, 113f)), select(!vec3<bool>(global2.d.b.x, true, true), func_8(global2.d.a, global2.b.yz, u_input.a.x, vec3<bool>(global2.d.b.x, false, true)).d, true), func_8(u_input.a.x << global2.c, trunc(global2.b.zz), -(-30148i), !global2.d.b.xyy), vec3<u32>(clamp(global2.c, 25630u, global2.c), ~30971u, abs(4294967295u))).d.b.x), max(-7468i, global2.d.a));
    let var_1 = -(firstLeadingBit(~global2.d.c) + (u_input.a / (global2.d.c << (vec4<u32>(37101u, 4294967295u, global2.c, global2.c) & vec4<u32>(26750u, 1u, global2.c, 18957u)))));
    let var_2 = func_9(Struct_4(vec4<i32>((u_input.a.x ^ var_0.a.x) >> func_6(var_0.e.c.wyx, global2.d.d).c, var_0.c.a, dot(func_7(Struct_2(global2.d.c.wzx, global2.b, 21001u, global2.d), global2.d.b.yxw, Struct_3(u_input.a.xx, vec4<i32>(var_1.x, global2.a.x, 1955i, global2.a.x), Struct_1(var_0.c.c.x, vec4<bool>(false, global2.d.b.x, true, var_0.e.b.x), vec4<i32>(i32(-2147483648), 57553i, var_0.e.c.x, u_input.a.x), var_0.e.e, global2.d.d), var_0.c.b.zwx, var_0.c), vec3<u32>(31720u, 20411u, global2.c)).d.c, ~u_input.a), ~1i), ~global2.a.x, func_8(reverseBits(-1i) / -5816i, -(-vec2<f32>(var_0.e.d, -1972f)), firstLeadingBit(-68196i), vec3<bool>(false, true && false, global2.d.b.x || global2.d.b.x)), Struct_2(select(~u_input.a.zyx, vec3<i32>(2147483647i, u_input.a.x, u_input.a.x) - vec3<i32>(2147483647i, var_1.x, 0i), false), vec3<f32>(max(946f, global2.d.d), exp2(var_0.e.e), -1458f + -1000f), select(min(10406u, global2.c), global2.c, 398f > global2.b.x), global2.d)), -(-round(vec3<f32>(706f, -308f, global2.b.x) / global2.b)), func_7(func_6(var_1.zwy, -var_0.e.e + global2.d.e), global2.d.b.xxz, func_9(Struct_4(global2.d.c, -var_0.a.x, func_8(var_0.b.x, vec2<f32>(1092f, global2.d.d), 2147483647i, var_0.d), func_7(Struct_2(vec3<i32>(u_input.a.x, var_1.x, var_0.a.x), global2.b, 0u, Struct_1(0i, vec4<bool>(var_0.e.b.x, var_0.d.x, true, true), vec4<i32>(var_0.a.x, 32957i, var_1.x, 31122i), global2.b.x, global2.d.d)), vec3<bool>(true, false, false), Struct_3(u_input.a.xw, u_input.a, Struct_1(var_1.x, vec4<bool>(global2.d.b.x, false, false, var_0.d.x), vec4<i32>(24719i, var_0.b.x, var_0.c.c.x, u_input.a.x), -621f, 1460f), var_0.d, global2.d), vec3<u32>(global2.c, global2.c, 4294967295u))), select(global2.b, global2.b, global2.d.b.zwy), all(select(vec2<bool>(var_0.d.x, false), vec2<bool>(true, var_0.d.x), false)), -(~var_0.e.c.x)), (~vec3<u32>(1u, 0u, global2.c) ^ (vec3<u32>(global2.c, global2.c, 38199u) % vec3<u32>(4294967295u, global2.c, 1u))) / select(vec3<u32>(1u, global2.c, 1u), vec3<u32>(1u, 92080u, 25874u) + vec3<u32>(global2.c, 21937u, 61761u), !global2.d.b.xzz)).d.b.x, var_1.x).e;
    var var_3 = 1u;
    let var_4 = func_9(Struct_4(vec4<i32>(49697i, firstTrailingBit(u_input.a.x), (i32(-2147483648) * 48960i) ^ dot(u_input.a, vec4<i32>(1i, 24594i, 0i, var_1.x)), min(global2.a.x - var_1.x, func_9(Struct_4(global2.d.c, global2.a.x, Struct_3(vec2<i32>(var_1.x, global2.d.a), u_input.a, var_0.c, var_0.e.b.zyy, global2.d), Struct_2(vec3<i32>(u_input.a.x, 17041i, global2.a.x), vec3<f32>(var_2.e, global2.d.e, global2.d.d), global2.c, Struct_1(28558i, vec4<bool>(false, false, var_2.b.x, false), vec4<i32>(var_1.x, u_input.a.x, -1i, var_2.c.x), -736f, 2151f))), vec3<f32>(1000f, -643f, -506f), false, u_input.a.x).a.x)), 3083i, func_9(Struct_4(func_8(global2.d.a, global2.b.yy, -8477i, vec3<bool>(var_0.d.x, false, var_0.d.x)).b, select(-3694i, u_input.a.x, true), func_9(Struct_4(global2.d.c, var_2.a, Struct_3(vec2<i32>(var_1.x, var_2.c.x), u_input.a, Struct_1(var_0.e.c.x, global2.d.b, var_2.c, 189f, 1842f), global2.d.b.wyz, var_2), Struct_2(vec3<i32>(u_input.a.x, global2.a.x, var_1.x), vec3<f32>(105f, var_2.d, 524f), global2.c, var_0.e)), vec3<f32>(617f, 774f, -204f), var_2.b.x, 2147483647i), Struct_2(var_0.e.c.yyy, global2.b, 1u, Struct_1(var_0.e.a, var_2.b, vec4<i32>(var_0.a.x, 0i, global2.a.x, 4454i), global2.d.d, var_0.c.e))), global2.b, any(func_9(Struct_4(vec4<i32>(i32(-2147483648), u_input.a.x, global2.a.x, 12838i), var_0.e.c.x, Struct_3(var_2.c.yw, u_input.a, global2.d, vec3<bool>(var_0.c.b.x, true, var_2.b.x), var_0.c), Struct_2(vec3<i32>(u_input.a.x, 11205i, 1i), global2.b, global2.c, var_0.c)), global2.b, var_2.b.x, 37735i).d.xx), var_1.x), Struct_2(-global2.a, global2.b, 1u, Struct_1(-1i * var_1.x, vec4<bool>(false, var_0.d.x, var_2.b.x, false), -var_0.c.c, var_0.e.d, -var_2.d))), -max(vec3<f32>(-1299f, var_2.d, 211f) + -vec3<f32>(-1280f, var_2.e, global2.b.x), -(-global2.b)), (-abs(990f) - var_0.c.d) > trunc(-func_7(Struct_2(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), global2.b, 0u, Struct_1(var_1.x, global2.d.b, vec4<i32>(global2.d.a, 2147483647i, 2147483647i, i32(-2147483648)), -272f, 2331f)), var_0.d, Struct_3(var_0.b.xx, vec4<i32>(var_2.a, var_2.a, -15600i, var_0.e.a), var_0.e, vec3<bool>(var_2.b.x, global2.d.b.x, true), Struct_1(var_1.x, vec4<bool>(var_0.e.b.x, var_0.c.b.x, var_2.b.x, false), vec4<i32>(7058i, -21645i, var_2.a, var_2.c.x), 144f, global2.d.e)), vec3<u32>(46681u, global2.c, global2.c)).b.x), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(-(-var_2.e + -528f), 1u, -(-668f) / global2.b.x);
}

