// {"0:0":[21,232,206,139,50,21,228,122,135,36,217,19,214,8,167,153,156,5,19,15,238,6,116,176,40,244,168,138,126,235,56,21,98,128,173,62,121,251,55,88,56,240,153,195,63,145,219,14,156,20,204,77,125,253,86,113,7,12,36,80,207,232,124,27]}
// Seed: 2469324422262422681

struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 60348u, 18419u);

var<private> global1: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(2396i, -35962i, 3790i), vec3<i32>(i32(-2147483648), -54304i, 0i), vec3<i32>(-1i, -6531i, 2147483647i), vec3<i32>(0i, 1i, 1i));

var<private> global2: array<u32, 4> = array<u32, 4>(35969u, 25283u, 4294967295u, 2129u);

var<private> global3: Struct_4 = Struct_4(vec4<u32>(81367u, 0u, 6112u, 0u), 4294967295u, true);

var<private> global4: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(0u, 38332u, 36103u, 2113u), vec4<u32>(6551u, 34567u, 1u, 3500u), vec4<u32>(14848u, 19488u, 0u, 0u), vec4<u32>(4294967295u, 1u, 0u, 1u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<u32>(23893u, 4294967295u, 82311u, 1u), vec4<u32>(24306u, 7111u, 1u, 64218u), vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(0u, 21333u, 4294967295u, 0u), vec4<u32>(2767u, 4294967295u, 0u, 1u), vec4<u32>(4294967295u, 17566u, 4294967295u, 22204u), vec4<u32>(1u, 1u, 4294967295u, 0u), vec4<u32>(1559u, 1u, 82937u, 2062u), vec4<u32>(46133u, 104184u, 28260u, 4294967295u), vec4<u32>(0u, 1u, 44723u, 44649u), vec4<u32>(1u, 4294967295u, 13551u, 4294967295u), vec4<u32>(68791u, 21348u, 110654u, 0u), vec4<u32>(4294967295u, 8532u, 30407u, 21554u), vec4<u32>(18608u, 1u, 34407u, 77612u), vec4<u32>(2371u, 52250u, 4294967295u, 4294967295u), vec4<u32>(22374u, 0u, 33686u, 0u), vec4<u32>(0u, 0u, 48388u, 30812u), vec4<u32>(0u, 0u, 0u, 23782u), vec4<u32>(1u, 43183u, 4294967295u, 50481u), vec4<u32>(0u, 37272u, 1u, 87601u), vec4<u32>(16430u, 4294967295u, 0u, 0u));

fn func_3() -> bool {
    let var_0 = u_input.b;
    let var_1 = select(floor(max(min(vec4<f32>(271f, -1441f, -1000f, -128f) * vec4<f32>(408f, 644f, 747f, -1000f), -vec4<f32>(1000f, -794f, -1280f, -257f)), -vec4<f32>(-377f, 161f, 531f, 2034f) - vec4<f32>(1151f, 1199f, -1012f, -1000f))), vec4<f32>(round(-(869f * 1508f)), select(-(-1447f), -398f, true) * ceil(-(-290f)), 753f, step(-462f, -abs(-148f))), !(!true) | any(select(!vec4<bool>(false, false, true, global3.c), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, global3.c, global3.c), vec4<bool>(true, true, true, false)), global3.c)));
    global0 = ~(~(~global3.a.xwx) * (select(u_input.d.yxy, vec3<u32>(0u, 4294967295u, global0.x) | vec3<u32>(global2[global0.x], 1u, 52621u), !vec3<bool>(false, false, false)) * firstLeadingBit(~vec3<u32>(u_input.b.x, var_0.x, 0u))));
    let var_2 = select(~abs(min(vec2<i32>(-34890i, u_input.c.x), vec2<i32>(2147483647i, 0i))), vec2<i32>(-(-2147483647i), u_input.a.x), vec2<bool>(!(!global3.c), global3.c)) | u_input.c.yw;
    return all(!vec3<bool>(!(!global3.c), global3.c, all(!vec3<bool>(global3.c, global3.c, global3.c))));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> Struct_4 {
    let var_0 = !(!vec4<bool>(global3.c && (global2[u_input.b.x] <= 82989u), any(vec2<bool>(global3.c, true)), !true, !(1u < u_input.d.x)));
    var var_1 = vec4<bool>(func_3(), true, any(select(!var_0.xzx, var_0.wzw, !select(vec3<bool>(arg_1, var_0.x, true), vec3<bool>(true, true, var_0.x), arg_1))), false);
    let var_2 = Struct_3(arg_0, 133f, Struct_1(global2[~(~global0.x & 19096u)], -(arg_0.yz & ~arg_0.yz)), min(vec4<f32>((-1681f + 535f) / exp2(289f), 727f, 893f, 488f), vec4<f32>(exp2(floor(1000f)), 125f + -812f, ceil(-828f) - -(-236f), exp2(sign(1145f)))));
    global3 = Struct_4(max(firstLeadingBit(~(global4[47457u] % vec4<u32>(27243u, global0.x, u_input.b.x, 0u))), ~(~vec4<u32>(14293u, global0.x, global2[0u], 63881u) / clamp(global4[global0.x], vec4<u32>(30500u, var_2.c.a, 12880u, global2[14493u]), global3.a))), select(~dot(vec4<u32>(global0.x, global2[10264u], 23720u, 21201u) * vec4<u32>(global3.a.x, u_input.d.x, 62811u, u_input.d.x), global4[16375u] ^ global4[u_input.d.x]), 19085u, !(!(!false))), var_0.x);
    let var_3 = arg_0.x;
    return Struct_4(global3.a, ~reverseBits(~u_input.d.x), var_1.x);
}

fn func_1(arg_0: vec2<f32>) -> Struct_4 {
    global3 = func_2((u_input.a.yzx ^ firstLeadingBit(vec3<i32>(u_input.c.x, -19988i, i32(-2147483648)))) - vec3<i32>(-(-46605i), 2147483647i, -(~u_input.a.x)), global3.c);
    var var_0 = Struct_2(Struct_1(global2[26494u], u_input.c.xz), select(select(select(0i, u_input.c.x, global3.c) << dot(global0.xy, global0.xz), i32(-2147483648), false || !false), u_input.c.x, select(global3.c | true, global3.c | true, global3.c) | (global3.c == any(vec2<bool>(true, global3.c)))), Struct_1(0u, firstLeadingBit(u_input.c.yy) & vec2<i32>(u_input.c.x * u_input.a.x, firstTrailingBit(-1i))));
    var var_1 = !vec2<bool>(!(!global3.c), !(false | true) || global3.c);
    var var_2 = !select(vec2<bool>(!(false | global3.c), !false), select(select(!vec2<bool>(global3.c, global3.c), vec2<bool>(false, global3.c), var_1.x), vec2<bool>(global3.c, false), vec2<bool>(func_3(), 324f <= arg_0.x)), !vec2<bool>(all(vec4<bool>(false, var_1.x, false, global3.c)), global3.c || var_1.x));
    var var_3 = Struct_4(clamp(u_input.d, vec4<u32>(var_0.c.a, ~1u, dot(global3.a, vec4<u32>(global3.a.x, global0.x, global0.x, global3.a.x)), ~(~100159u)), ~firstTrailingBit(select(global3.a, global4[5528u], vec4<bool>(false, global3.c, var_1.x, true)))), ~(global2[(global0.x | global0.x) << (u_input.b.x - 1000u)] << global3.a.x), var_1.x);
    return func_2(u_input.a.xzw ^ vec3<i32>(u_input.c.x, abs(reverseBits(1i)), var_0.c.b.x), !var_2.x);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: u32, arg_3: vec2<bool>) -> bool {
    global3 = arg_0;
    var var_0 = 4294967295u;
    let var_1 = ceil(vec2<f32>(select(196f, -636f, reverseBits(u_input.c.x) > 18881i), -236f - (-1134f + (-473f - 590f))));
    var var_2 = !(!(!(!vec4<bool>(false, false, true, global3.c))));
    let var_3 = ~(-22381i);
    return (firstTrailingBit(var_3) - i32(-2147483648)) < 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(global3.c, any(vec3<bool>(true, global3.c, func_4(func_1(vec2<f32>(-1065f, -2437f)), func_2(u_input.c.zww, true).a.xxz, ~global2[57769u], select(vec2<bool>(global3.c, global3.c), vec2<bool>(global3.c, global3.c), false)))), !global3.c);
    var var_1 = Struct_2(Struct_1(704u, -(~u_input.a.yw)), -u_input.c.x, Struct_1(u_input.d.x - u_input.b.x, vec2<i32>(~u_input.a.x, i32(-2147483648))));
    var var_2 = -clamp(var_1.c.b.x, ~(u_input.a.x ^ var_1.b), u_input.a.x ^ -24343i);
    let var_3 = ((firstLeadingBit(var_1.a.b.x) - (clamp(var_1.b, var_1.b, -13023i) - u_input.c.x)) - dot(max(u_input.c, select(u_input.c, u_input.a, true)), ~select(u_input.a, vec4<i32>(-17167i, -1i, u_input.a.x, i32(-2147483648)), vec4<bool>(false, true, true, true)))) + -(-62633i);
    global1 = array<vec3<i32>, 4>();
    let var_4 = (-(-vec2<f32>(-675f, 836f) - abs(vec2<f32>(-856f, 425f))) * sign(vec2<f32>(select(-555f, -444f, false), round(-439f)))) * vec2<f32>(-(-1079f), 849f);
    var var_5 = Struct_2(var_1.c, i32(-2147483648), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(ceil((var_4 / (var_4 * var_4)) / var_4), var_4.x, clamp(3270u - firstTrailingBit(0u), reverseBits((global3.a.x / var_1.c.a) + (global2[global3.b] >> global0.x)), 4294967295u + 1u), firstLeadingBit(-vec3<i32>(var_1.c.b.x, -38550i, reverseBits(-36127i))));
}

