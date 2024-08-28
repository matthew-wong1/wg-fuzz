// {"0:0":[145,160,196,38,42,177,116,217,222,28,174,27,77,230,73,149,27,230,172,73,82,133,248,218,123,254,29,132,192,90,163,0,226,161,180,215,172,107,63,231,213,109,131,76,186,192,12,192]}
// Seed: 5885013273728638051

struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = -firstLeadingBit(~(vec4<i32>(u_input.a.x, 16969i, i32(-2147483648), -33637i) >> vec4<u32>(arg_2.a, 0u, arg_0.a, arg_0.a)) % (-vec4<i32>(12422i, -1i, u_input.a.x, 0i) | -vec4<i32>(u_input.a.x, 1i, 1i, -1i)));
    var var_1 = arg_0;
    global0 = -(-exp2((vec4<f32>(arg_1.a, -867f, arg_1.a, 1402f) - vec4<f32>(-1104f, 805f, -1184f, -833f)) * (vec4<f32>(-1043f, arg_1.a, global0.x, 1165f) * vec4<f32>(907f, global0.x, 514f, -629f))));
    var_1 = Struct_2(~(12773u - clamp(arg_0.a, arg_0.a, firstLeadingBit(0u))));
    var_0 = firstLeadingBit(firstTrailingBit(select(~(vec4<i32>(55460i, 16686i, 0i, var_0.x) & vec4<i32>(2147483647i, var_0.x, var_0.x, u_input.a.x)), -firstLeadingBit(vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, u_input.a.x)), !vec4<bool>(arg_1.b.x, arg_1.c, false, arg_1.c))));
    return select(select(vec4<bool>(!all(vec4<bool>(arg_1.c, false, arg_1.b.x, arg_1.b.x)), !arg_1.b.x, all(arg_1.b.zy), !arg_1.b.x), vec4<bool>((global0.x >= global0.x) || true, all(!vec4<bool>(true, arg_1.c, arg_1.b.x, true)), false & (var_1.a >= 68230u), any(!arg_1.b.yz)), select(select(!vec4<bool>(true, true, arg_1.c, false), select(vec4<bool>(arg_1.c, true, arg_1.c, true), vec4<bool>(false, arg_1.c, false, arg_1.b.x), false), !vec4<bool>(false, arg_1.b.x, false, false)), !select(vec4<bool>(false, true, arg_1.b.x, false), vec4<bool>(arg_1.c, false, true, arg_1.c), true), arg_1.c)), select(vec4<bool>((u_input.a.x > 0i) && (false | true), arg_1.c, arg_1.c, any(vec4<bool>(true, true, arg_1.c, arg_1.b.x))), vec4<bool>(!(!arg_1.c), arg_1.c, abs(1u) <= (55650u * var_1.a), true), false), vec4<bool>(false, arg_1.b.x, arg_1.c, !(!true)));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = func_3(Struct_2(arg_0 * arg_0), arg_2, Struct_2(~reverseBits(4294967295u ^ 15113u)));
    global0 = -(-min((vec4<f32>(arg_2.a, arg_2.a, global0.x, arg_1.x) / vec4<f32>(global0.x, global0.x, arg_2.a, -1643f)) + vec4<f32>(861f, 584f, -104f, 1532f), vec4<f32>(global0.x - -775f, sign(arg_2.a), 125f, arg_1.x)));
    var var_1 = ~(~clamp(select(~arg_0, 15286u * 0u, !var_0.x), ~1u, abs(u_input.b.x ^ u_input.c.x)));
    let var_2 = !(var_0.x | (((u_input.a.x % u_input.a.x) > ~u_input.a.x) | (clamp(u_input.a.x, u_input.a.x, -59745i) <= u_input.a.x)));
    global0 = vec4<f32>(min(-1000f, -331f), (select(-arg_2.a, -global0.x, var_2) - 448f) - -2091f, -(step(global0.x, -481f) + step(-arg_2.a, -(-1025f))), -(-global0.x));
    return ceil(-(vec4<f32>(-(-552f), global0.x, -global0.x, arg_1.x) - ceil(vec4<f32>(global0.x, arg_2.a, -1343f, -1778f))));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global0 = -((func_2(~4294967295u, -global0.ywx, Struct_1(global0.x, vec3<bool>(false, false, false), true)) - -(vec4<f32>(-2038f, global0.x, global0.x, 2776f) - vec4<f32>(-164f, -1424f, -273f, global0.x))) / exp2(-(vec4<f32>(1000f, global0.x, global0.x, global0.x) - vec4<f32>(global0.x, global0.x, global0.x, global0.x))));
    var var_0 = any(vec2<bool>(func_3(Struct_2(u_input.b.x), Struct_1(global0.x, !vec3<bool>(false, true, true), false), arg_0).x, !((33024u < 1u) && false)));
    var var_1 = Struct_1(global0.x, !func_3(Struct_2(~17036u), Struct_1(global0.x * global0.x, func_3(Struct_2(4118u), Struct_1(global0.x, vec3<bool>(false, true, true), true), Struct_2(4294967295u)).xyz, any(vec2<bool>(false, false))), arg_0).xxy, select(!true, !(global0.x < -(-1511f)), true));
    let var_2 = !func_3(arg_0, Struct_1(-424f / -(-417f), func_3(arg_0, Struct_1(-171f, vec3<bool>(false, false, true), var_1.c), arg_0).xzz, select(var_1.c, false, var_1.b.x) || false), Struct_2(arg_0.a));
    var_1 = Struct_1(-(-(-1897f) * -(961f / 1160f)), select(func_3(Struct_2(dot(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(arg_0.a, 1u))), Struct_1(905f * var_1.a, !vec3<bool>(true, var_2.x, false), !var_1.b.x), arg_0).wxz, !vec3<bool>(!var_1.c, true, var_1.b.x), vec3<bool>((-90784i >= -37721i) || any(var_2.xz), true, all(var_1.b))), !any(select(vec3<bool>(false, false, true), select(vec3<bool>(var_1.b.x, var_1.b.x, true), vec3<bool>(false, false, false), var_2.ywz), var_2.x || false)));
    return Struct_1(-866f, var_2.zxx, ~arg_0.a != 73937u);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    global0 = -vec4<f32>(select(arg_1.a, 820f, true), round(-(-171f)), -(-2364f / arg_1.a), -346f);
    global0 = -vec4<f32>(-(-1346f + arg_1.a), ceil(-1678f), 1420f / ((global0.x * -1000f) + 565f), -146f);
    let var_0 = -abs(firstTrailingBit(arg_0) & 10626i) << abs(countOneBits(63840u));
    let var_1 = arg_1.a;
    let var_2 = abs(global0.xx) - -vec2<f32>(-arg_1.a, -(-var_1));
    return Struct_2(~(u_input.c.x + u_input.c.x) ^ reverseBits(~(u_input.b.x / u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(u_input.a.x, func_1(Struct_2(u_input.c.x ^ ~21607u)));
    var var_1 = u_input.a.x;
    var var_2 = vec3<f32>(826f, max(exp2(-1235f - func_2(u_input.b.x, vec3<f32>(global0.x, 1326f, 1727f), Struct_1(-1382f, vec3<bool>(false, true, true), true)).x), -(-132f)), -(-625f + global0.x));
    var var_3 = vec2<bool>(20079u >= ~dot(~u_input.c, vec2<u32>(u_input.b.x, u_input.b.x)), true == !true);
    var var_4 = select(vec2<bool>(false, 61046u < 1u), vec2<bool>(!(!all(vec4<bool>(var_3.x, true, false, var_3.x))), false), select(!vec2<bool>(43389u >= u_input.b.x, !true), !func_3(var_0, Struct_1(var_2.x, vec3<bool>(var_3.x, true, var_3.x), false), func_4(u_input.a.x, Struct_1(var_2.x, vec3<bool>(false, true, true), false))).yy, !(!vec2<bool>(false, false))));
    var_1 = 1330i;
    var var_5 = (func_2(var_0.a, global0.wwy, Struct_1(global0.x - var_2.x, func_3(Struct_2(6867u), Struct_1(1628f, vec3<bool>(false, var_4.x, false), var_3.x), Struct_2(4294967295u)).yxw, !var_4.x)).x - -(-(-(-1278f)))) - -min((global0.x * -1000f) / (-1215f * 168f), trunc(-111f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a.x, -(~(-29797i | 0i)), u_input.a.x, u_input.a.x), 54882u, ~u_input.b.x);
}

