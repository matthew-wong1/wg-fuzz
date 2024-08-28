// {"0:0":[107,115,179,221,140,87,96,161,201,223,132,25,129,150,142,42,50,107,143,140,82,92,150,239,4,23,70,150,92,53,113,213]}
// Seed: 628197478208638642

struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> vec3<f32> {
    return vec3<f32>(-min(sign(arg_0.c), round(arg_2)) - arg_2, -select(-1579f, -exp2(arg_2), arg_0.a), arg_2);
}

fn func_2() -> vec3<u32> {
    let var_0 = ~u_input.c.x * 4294967295u;
    let var_1 = Struct_2(select(vec3<bool>(select(u_input.e < 41766i, false, all(vec4<bool>(false, true, false, true))), false, any(vec3<bool>(false, true, false))), select(vec3<bool>(true, all(vec2<bool>(false, false)), false && false), !(!vec3<bool>(true, true, false)), vec3<bool>(true, false || true, all(vec3<bool>(false, true, true)))), !vec3<bool>(35922u <= 0u, u_input.c.x < 1u, u_input.b.x <= u_input.c.x)), -(-round(vec3<f32>(-1000f, 199f, -1640f))) + (func_3(Struct_1(true, vec3<bool>(false, true, true), -2437f, true, vec3<i32>(u_input.a.x, -61931i, 0i)), 0u < var_0, -918f) * ((vec3<f32>(384f, 116f, -340f) + vec3<f32>(1887f, 398f, -626f)) + -vec3<f32>(-1250f, -937f, -349f))), Struct_1(false, vec3<bool>(!(true && true), clamp(131978u, 0u, var_0) != u_input.b.x, any(!vec4<bool>(true, false, true, true))), -1215f, any(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), (-vec3<i32>(u_input.e, u_input.a.x, u_input.e) + (vec3<i32>(u_input.a.x, -1i, 22905i) & vec3<i32>(u_input.a.x, 49303i, 29924i))) * (vec3<i32>(u_input.e, u_input.e, u_input.e) - max(vec3<i32>(10935i, 1i, 31512i), vec3<i32>(u_input.e, i32(-2147483648), u_input.a.x)))));
    var var_2 = var_1.c.c;
    let var_3 = dot(firstTrailingBit(vec4<u32>(4294967295u, 63303u, var_0, 0u) - ~vec4<u32>(u_input.c.x, var_0, var_0, 51480u)), vec4<u32>(0u, u_input.b.x, 4294967295u + ~44058u, u_input.b.x + ~25327u)) >> reverseBits(1u);
    var var_4 = Struct_3(reverseBits((~vec3<u32>(var_0, var_0, var_0) * firstTrailingBit(vec3<u32>(1u, 19750u, var_3))) ^ vec3<u32>(~var_0, ~var_3, var_3)), -ceil(sign(var_1.b.xy)));
    return ~(~vec3<u32>(dot(vec4<u32>(u_input.b.x, 76752u, u_input.d, 4020u), abs(vec4<u32>(40796u, 0u, 0u, var_0))), ~86570u, (0u * 20582u) - var_3));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = var_0.b;
    var var_2 = -1000f;
    var var_3 = Struct_3(select(func_2(), ~(vec3<u32>(1u, arg_3.a.x, u_input.d) / (arg_3.a + vec3<u32>(38288u, 1u, u_input.c.x))), var_0.d), vec2<f32>(round(-var_0.c) * -630f, 326f));
    var_2 = select(-437f, -121f, (max(17075u, u_input.d) * select(abs(var_3.a.x), 25791u, var_1.x)) >= firstTrailingBit(~abs(31859u)));
    return Struct_2(select(select(arg_1.b, select(select(arg_0.b, arg_1.b, vec3<bool>(false, false, false)), arg_0.b, !arg_0.b), !true), select(arg_0.b, vec3<bool>(any(arg_1.b), any(arg_1.b), all(arg_0.b)), select(!var_0.b, !var_0.b, 1i < var_0.e.x)), all(select(select(vec2<bool>(true, true), var_0.b.yz, false), vec2<bool>(var_0.b.x, arg_1.a), vec2<bool>(false, var_1.x)))), ceil(min(sign(vec3<f32>(arg_0.c, -1000f, 1238f)), vec3<f32>(1133f, arg_3.b.x, -1259f) + vec3<f32>(460f, -505f, 1273f))) * vec3<f32>(exp2(392f), 1000f, var_3.b.x + -var_0.c), Struct_1(arg_0.d, !vec3<bool>(!arg_0.a, !var_1.x, var_1.x), arg_0.c, var_0.a, ~(~(~arg_0.e))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32) -> vec3<bool> {
    var var_0 = select(vec4<bool>(arg_1.c.a, true && false, any(vec2<bool>(false, all(vec2<bool>(arg_1.c.d, arg_1.a.x)))), all(vec3<bool>(8969i >= arg_0.x, all(vec4<bool>(arg_1.c.b.x, false, arg_1.c.a, arg_1.a.x)), arg_1.c.b.x))), !(!select(!vec4<bool>(false, true, arg_1.a.x, true), vec4<bool>(arg_1.a.x, true, arg_1.c.a, arg_1.c.a), vec4<bool>(false, arg_1.c.d, true, arg_1.a.x))), all(select(vec4<bool>(arg_1.c.d, !arg_1.a.x, all(arg_1.a.zx), false), select(!vec4<bool>(arg_1.a.x, true, arg_1.a.x, false), !vec4<bool>(arg_1.a.x, arg_1.c.b.x, true, true), !vec4<bool>(false, arg_1.a.x, true, arg_1.c.b.x)), !select(vec4<bool>(arg_1.c.b.x, arg_1.c.d, arg_1.c.a, true), vec4<bool>(arg_1.c.d, arg_1.c.d, arg_1.c.b.x, false), arg_1.c.d))));
    var var_1 = reverseBits(arg_2) ^ 4294967295u;
    var_0 = !vec4<bool>(arg_1.a.x && ((arg_1.a.x & arg_1.a.x) & (arg_1.c.d | true)), !(true || (var_0.x || true)), (-13180i != (u_input.e + -13404i)) == (dot(vec3<i32>(0i, 2147483647i, 2147483647i), arg_0) > -34201i), select(any(select(vec2<bool>(arg_1.c.a, var_0.x), vec2<bool>(true, false), true)), arg_1.a.x, true));
    let var_2 = -arg_1.b.x;
    let var_3 = (-(~arg_0.x) << 4294967295u) * arg_0.x;
    return !(!select(!vec3<bool>(arg_1.a.x, false, arg_1.c.b.x), arg_1.a, (32418u < 32409u) && (var_3 > -54344i)));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_3(func_1(func_1(Struct_1(true, !vec3<bool>(false, arg_0.a, true), arg_0.c - -1109f, arg_0.a, arg_0.e), Struct_1(!arg_0.b.x, func_1(arg_0, arg_0, arg_0.e.yz, Struct_3(vec3<u32>(u_input.c.x, 0u, u_input.c.x), vec2<f32>(arg_0.c, arg_0.c))).c.b, 1259f / arg_0.c, false, vec3<i32>(-1i, 2147483647i, u_input.a.x)), max(~vec2<i32>(11063i, 877i), -vec2<i32>(u_input.e, u_input.e)), Struct_3(~vec3<u32>(24623u, 15826u, 4294967295u), vec2<f32>(arg_0.c, arg_0.c) - vec2<f32>(1534f, arg_0.c))).c, Struct_1(!true || arg_0.d, arg_0.b, -arg_0.c, false, ~(vec3<i32>(u_input.a.x, arg_0.e.x, 0i) % arg_0.e)), ~max(arg_0.e.xy, vec2<i32>(u_input.e, arg_0.e.x)) | vec2<i32>(-41426i, -u_input.a.x), Struct_3(firstLeadingBit(firstLeadingBit(vec3<u32>(73680u, 1432u, 1u))), exp2(vec2<f32>(arg_0.c, arg_0.c) + vec2<f32>(830f, arg_0.c)))).c, (u_input.c.x ^ (select(29150u, 1u, arg_0.d) * 7031u)) > u_input.c.x, arg_0.c);
    var var_1 = 58580u;
    var var_2 = abs(5271u);
    let var_3 = false;
    let var_4 = Struct_1(any(vec4<bool>(reverseBits(-1i) != -u_input.e, 50740u != (0u & 7103u), true, true || false)), !(!(!arg_0.b)), 140f, !false, ~vec3<i32>(min(arg_0.e.x, arg_0.e.x / u_input.e), 1i, firstTrailingBit(1i) + (1i << u_input.b.x)));
    return func_1(Struct_1(all(vec4<bool>(true, true, false, arg_0.d)) || (!var_4.d && func_4(arg_0.e, Struct_2(arg_0.b, var_0, arg_0), 61784u).x), !select(arg_0.b, var_4.b, select(var_4.b, var_4.b, arg_0.d)), -1000f, arg_0.c < 1000f, vec3<i32>(-1i ^ u_input.e, dot(vec3<i32>(0i, 19251i, -20288i), vec3<i32>(0i, u_input.a.x, var_4.e.x)), -49782i) + ~(vec3<i32>(1i, arg_0.e.x, 29622i) & vec3<i32>(19811i, 2147483647i, 2147483647i))), var_4, -clamp(~vec2<i32>(arg_0.e.x, 17501i), select(vec2<i32>(0i, u_input.a.x), vec2<i32>(-1i, u_input.e) + arg_0.e.yy, true), max(u_input.a, -var_4.e.xx)), Struct_3(~(~vec3<u32>(4294967295u, u_input.d, 28602u)), vec2<f32>(233f, floor(max(488f, -549f))))).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(all(func_4(-vec3<i32>(-1i, i32(-2147483648), u_input.e), func_1(Struct_1(false, vec3<bool>(true, true, false), -172f, false, vec3<i32>(-13609i, -35978i, -54625i)), Struct_1(true, vec3<bool>(true, false, false), 1000f, false, vec3<i32>(u_input.e, i32(-2147483648), -9581i)), u_input.a, Struct_3(vec3<u32>(u_input.b.x, 64451u, 44572u), vec2<f32>(-664f, 1000f))), firstTrailingBit(16275u))), func_4(min(~vec3<i32>(u_input.e, 21266i, -1i), vec3<i32>(u_input.e, u_input.e, u_input.e)), Struct_2(vec3<bool>(true, true, true), -vec3<f32>(2081f, 1000f, -1240f), func_1(Struct_1(true, vec3<bool>(false, false, true), -1000f, false, vec3<i32>(u_input.e, u_input.a.x, u_input.e)), Struct_1(true, vec3<bool>(true, true, false), -1309f, false, vec3<i32>(u_input.a.x, 27455i, u_input.a.x)), vec2<i32>(u_input.e, 0i), Struct_3(vec3<u32>(u_input.b.x, u_input.d, 1u), vec2<f32>(-823f, 985f))).c), 77886u), -abs(1549f) + -(376f / -1329f), (abs(-45166i) ^ (u_input.e * -38940i)) > 49115i, clamp(-vec3<i32>(50197i, u_input.e, 17283i) << (vec3<u32>(u_input.c.x, u_input.c.x, 1u) >> vec3<u32>(55351u, u_input.b.x, u_input.b.x)), select(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(i32(-2147483648), 0i, 1i), !vec3<bool>(false, false, false)), vec3<i32>(u_input.a.x, u_input.a.x / -17433i, dot(vec2<i32>(-11687i, 19851i), u_input.a)))));
    var var_1 = Struct_1(true, func_1(var_0, var_0, func_5(Struct_1(all(var_0.b.xz), func_4(var_0.e, Struct_2(vec3<bool>(var_0.b.x, true, false), vec3<f32>(var_0.c, var_0.c, var_0.c), var_0), 0u), -241f - var_0.c, any(vec4<bool>(var_0.b.x, false, false, false)), vec3<i32>(i32(-2147483648), 2147483647i, u_input.a.x) >> vec3<u32>(u_input.b.x, u_input.c.x, 38312u))).e.xx, Struct_3(countOneBits(vec3<u32>(u_input.d, 4294967295u, 0u)) % ~vec3<u32>(0u, 27033u, u_input.d), vec2<f32>(-653f, 1006f))).c.b, var_0.c, all(func_4(~vec3<i32>(u_input.e, var_0.e.x, 4634i), func_1(func_5(Struct_1(var_0.b.x, vec3<bool>(var_0.b.x, var_0.a, var_0.d), -119f, var_0.d, vec3<i32>(var_0.e.x, -1i, u_input.a.x))), func_1(Struct_1(var_0.b.x, var_0.b, 590f, false, var_0.e), var_0, vec2<i32>(u_input.e, var_0.e.x), Struct_3(vec3<u32>(0u, u_input.d, u_input.d), vec2<f32>(var_0.c, -891f))).c, var_0.e.zx, Struct_3(vec3<u32>(u_input.d, 32503u, 4294967295u), vec2<f32>(495f, 212f))), ~4294967295u).zy), firstLeadingBit(-var_0.e | var_0.e) * vec3<i32>(-14337i, -var_0.e.x, dot(vec3<i32>(u_input.a.x, 26861i, var_0.e.x), vec3<i32>(25858i, u_input.e, -1i) | var_0.e)));
    let var_2 = -1000f <= 119f;
    var var_3 = func_1(Struct_1(!(!true), vec3<bool>(func_5(Struct_1(false, vec3<bool>(false, var_2, var_2), -211f, false, var_1.e)).a, true, !(!var_1.b.x)), 1464f, ~(~u_input.c.x) <= (abs(27596u) << 1u), (select(var_0.e, var_0.e, vec3<bool>(var_2, var_1.a, true)) - (var_1.e + vec3<i32>(var_0.e.x, u_input.e, u_input.e))) * (var_1.e + func_1(Struct_1(true, var_1.b, var_0.c, var_2, var_1.e), Struct_1(var_1.b.x, vec3<bool>(var_0.b.x, var_1.b.x, var_2), var_0.c, var_2, var_1.e), vec2<i32>(1i, var_1.e.x), Struct_3(vec3<u32>(0u, u_input.d, u_input.c.x), vec2<f32>(693f, -557f))).c.e)), Struct_1(1000f == -681f, var_0.b, -998f, select(true, !(614f >= var_0.c), !(!false)), -vec3<i32>(var_1.e.x, u_input.e >> 2834u, var_1.e.x)), reverseBits(var_1.e.yy), Struct_3(firstLeadingBit(max(vec3<u32>(u_input.b.x, u_input.c.x, 4294967295u), vec3<u32>(1u, 0u, u_input.d)) << ~vec3<u32>(6479u, 0u, 53751u)), vec2<f32>(1000f, func_3(var_0, 69710u > u_input.d, 106f).x))).c;
    var var_4 = countOneBits(vec4<i32>(abs(abs(abs(var_0.e.x))), func_5(func_5(func_1(Struct_1(false, var_1.b, 501f, var_2, var_3.e), var_0, vec2<i32>(u_input.a.x, u_input.a.x), Struct_3(vec3<u32>(4294967295u, 84416u, u_input.c.x), vec2<f32>(-214f, -634f))).c)).e.x, func_5(var_0).e.x << (~u_input.c.x / (73593u % u_input.d)), -50588i));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c - 572f);
}

