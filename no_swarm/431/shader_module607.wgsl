// {"0:0":[130,148,1,137,205,222,198,53,167,205,41,171,218,216,171,199,199,18,149,253,199,8,81,192,238,0,108,145,92,224,24,52,58,157,165,176,236,231,167,187,158,154,13,120,40,110,144,135,58,14,157,125,8,228,19,215,196,89,126,20,172,150,222,244]}
// Seed: 5034888713876622722

struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn func_3(arg_0: bool) -> f32 {
    var var_0 = Struct_1((17335i % u_input.b.x) & (dot(reverseBits(vec3<i32>(u_input.b.x, global0.a, u_input.b.x)), vec3<i32>(u_input.b.x, 16284i, global0.a) & vec3<i32>(u_input.b.x, global0.a, 0i)) / -39508i));
    var_0 = Struct_1((countOneBits(select(u_input.b.x, var_0.a, arg_0)) ^ 39735i) - u_input.b.x);
    let var_1 = select(select(select(vec4<bool>(arg_0 || true, false, 23695u > 0u, true), select(!vec4<bool>(arg_0, false, arg_0, false), !vec4<bool>(arg_0, true, false, false), vec4<bool>(arg_0, true, true, true)), !select(vec4<bool>(false, true, false, arg_0), vec4<bool>(false, true, arg_0, false), arg_0)), select(vec4<bool>(select(false, arg_0, arg_0), arg_0, all(vec4<bool>(arg_0, false, arg_0, true)), true), vec4<bool>(!false, false, arg_0, all(vec2<bool>(false, arg_0))), any(select(vec4<bool>(false, arg_0, true, false), vec4<bool>(arg_0, true, arg_0, false), true))), arg_0), vec4<bool>((u_input.d % u_input.d) < firstLeadingBit(u_input.c.x), select(arg_0, !true, any(vec2<bool>(arg_0, arg_0))), exp2(round(-1000f)) > 2483f, countOneBits(global0.a) <= abs(~0i)), false);
    var var_2 = select(vec2<f32>(step((963f / 271f) - -701f, floor(round(1684f))), round(222f * sign(-988f))), vec2<f32>(min(1082f, 1683f) * -783f, max(-(-2362f), -(-630f))) * -floor(vec2<f32>(688f, 610f) + vec2<f32>(760f, 249f)), var_1.x | arg_0);
    var_0 = Struct_1(var_0.a);
    return -(-var_2.x) - 620f;
}

fn func_2() -> vec3<bool> {
    var var_0 = u_input.a.x;
    var var_1 = Struct_1(-(~34033i & 1i));
    var var_2 = ~clamp(~(-(u_input.b.x | 13533i)), global0.a, 2147483647i);
    var var_3 = !(!any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false))) & false);
    let var_4 = Struct_2(~0u, func_3(-724f == -280f), Struct_1(countOneBits(u_input.b.x) >> 1u), abs((vec3<i32>(i32(-2147483648), var_1.a, global0.a) & vec3<i32>(20239i, var_1.a, 25062i)) / firstLeadingBit(vec3<i32>(global0.a, -18746i, 2147483647i))) * (~(~vec3<i32>(-50266i, 1i, global0.a)) | ~(-vec3<i32>(global0.a, global0.a, 2147483647i))), Struct_1(min(~u_input.b.x, dot(countOneBits(vec4<i32>(u_input.b.x, global0.a, 1i, var_1.a)), vec4<i32>(u_input.b.x, var_1.a, 1981i, -1i)))));
    return select(vec3<bool>(!(!(!true)), !false, false), !(!vec3<bool>(!true, any(vec3<bool>(false, false, false)), false || false)), any(vec4<bool>(any(!vec4<bool>(true, false, true, true)), true, all(!vec3<bool>(true, false, true)), true)));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: vec3<bool>) -> f32 {
    global0 = Struct_1(436i);
    return -1000f;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec3<bool>) -> Struct_1 {
    global0 = arg_0.e;
    var var_0 = arg_0;
    global0 = Struct_1(global0.a);
    return var_0.e;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> vec3<i32> {
    var var_0 = func_5(Struct_2(arg_1, func_4(vec3<f32>(1989f + arg_3.x, -(-129f), 558f + arg_3.x), -987f - min(-1180f, -394f), select(func_2(), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), arg_1 >= 0u)), arg_2, vec3<i32>(25011i, firstLeadingBit(global0.a), min(-12940i, arg_2.a)) & select(vec3<i32>(arg_2.a, -78793i, 18042i) - vec3<i32>(arg_0, 0i, i32(-2147483648)), vec3<i32>(global0.a, 1i, 21147i) ^ vec3<i32>(global0.a, global0.a, 0i), false), arg_2), -12150i, vec3<bool>(select(all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), true, (-378f / arg_3.x) <= (arg_3.x / -1609f)), -(-433f) > -250f, select(!(!true), any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), !false)));
    var var_1 = -(-(vec3<f32>(arg_3.x, arg_3.x, arg_3.x) - trunc(vec3<f32>(arg_3.x, 623f, 640f)))) + -abs(-vec3<f32>(-449f, -951f, 181f));
    var_1 = max(vec3<f32>(arg_3.x, floor(-391f * var_1.x) * (-199f + -103f), -1000f + (-arg_3.x - (2042f / arg_3.x))), vec3<f32>(arg_3.x, -arg_3.x + (-387f - -313f), 2180f) / step(trunc(-vec3<f32>(-968f, 2062f, -1031f)), -step(vec3<f32>(-1854f, 508f, var_1.x), vec3<f32>(var_1.x, arg_3.x, -1000f))));
    global0 = Struct_1(-2147483647i % ~var_0.a);
    var_0 = arg_2;
    return reverseBits(select(vec3<i32>(u_input.b.x, 2147483647i, -var_0.a), ~vec3<i32>(1i, arg_0, 1i), true) % (vec3<i32>(1i, global0.a, var_0.a / -3989i) << (u_input.a.wxw >> clamp(vec3<u32>(arg_1, u_input.c.x, arg_1), u_input.a.zxw, vec3<u32>(arg_1, u_input.c.x, 135542u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(u_input.b.x);
    let var_0 = floor(sign(-(-141f) / -137f));
    let var_1 = Struct_2(u_input.a.x, -1067f - var_0, Struct_1(212i), vec3<i32>(0i + -30040i, u_input.b.x, -(-42957i)) ^ (func_1(max(u_input.b.x, 61417i), ~0u, Struct_1(global0.a), -vec2<f32>(var_0, -1253f)) | ~(vec3<i32>(i32(-2147483648), 2147483647i, u_input.b.x) & vec3<i32>(global0.a, i32(-2147483648), global0.a))), func_5(Struct_2(clamp(u_input.c.x, ~u_input.d, u_input.d), var_0, Struct_1(-13715i % 1i), firstTrailingBit(-vec3<i32>(global0.a, -24232i, global0.a)), Struct_1(abs(u_input.b.x))), -1i, vec3<bool>(u_input.b.x == -(-49842i), !all(vec2<bool>(true, true)), !(false | true))));
    var var_2 = ~(~countOneBits(abs(u_input.c.x)) * firstLeadingBit(~(~var_1.a)));
    var var_3 = ~var_1.a;
    let var_4 = Struct_1(abs(2147483647i));
    let var_5 = Struct_2(reverseBits(u_input.a.x / (129u | ~var_1.a)), -1000f, var_1.e, vec3<i32>(0i, ~(-11919i & 71429i) | u_input.b.x, ~85965i), var_1.c);
    global0 = func_5(var_1, var_5.d.x, select(vec3<bool>(true, var_1.b == -(-412f), var_5.e.a < dot(var_1.d, vec3<i32>(u_input.b.x, 11749i, u_input.b.x))), func_2(), vec3<bool>(any(vec4<bool>(true, false, false, true)) || true, true, (590f <= -1000f) | all(vec3<bool>(true, false, false)))));
    var var_6 = var_1.e;
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.d));
}

