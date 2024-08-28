// {"0:0":[160,22,188,88]}
// Seed: 9390516049560587583

struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(18732u, 30564u, 1u), vec3<u32>(4294967295u, 1u, 56634u));

fn func_1() -> vec3<bool> {
    global0 = array<vec3<u32>, 3>();
    global0 = array<vec3<u32>, 3>();
    var var_0 = (-14794i >> u_input.a) * dot(vec4<i32>(dot(clamp(vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-1i, -1i), vec2<i32>(5664i, 20559i)), reverseBits(vec2<i32>(30568i, 29935i))), -1i, 1i, -(~28640i)), vec4<i32>(7636i | 1i, i32(-2147483648), 30039i, -1i) + -(~vec4<i32>(-27255i, i32(-2147483648), 15746i, -46920i)));
    global0 = array<vec3<u32>, 3>();
    global0 = array<vec3<u32>, 3>();
    return !(!vec3<bool>(!false, false, !true));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_5) -> bool {
    var var_0 = -(vec2<f32>(-(arg_1.b.c.b / 2158f), ceil(-1598f)) + (-ceil(vec2<f32>(arg_1.b.b.a.b, arg_1.b.d.b)) / vec2<f32>(select(arg_1.b.d.b, 329f, false), 894f)));
    global0 = array<vec3<u32>, 3>();
    var var_1 = vec2<u32>(~u_input.a << firstTrailingBit(4294967295u - countOneBits(0u)), countOneBits(0u) / dot(~arg_1.b.b.c, vec4<u32>(countOneBits(u_input.a), dot(vec4<u32>(u_input.a, 1u, 1u, 4983u), vec4<u32>(u_input.a, 34759u, u_input.a, 0u)), 4294967295u, clamp(arg_1.a.b.c.x, 6011u, 17093u))));
    global0 = array<vec3<u32>, 3>();
    var_1 = ~vec2<u32>(min(55358u, ~27145u & var_1.x), u_input.a);
    return arg_1.a.d.a.x;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec4<bool>, arg_3: vec3<i32>) -> bool {
    global0 = array<vec3<u32>, 3>();
    var var_0 = 29794u;
    global0 = array<vec3<u32>, 3>();
    global0 = array<vec3<u32>, 3>();
    let var_1 = Struct_4(select(select(func_1().zy, arg_2.zz, !arg_1), arg_2.zz, select(!(!arg_2.zz), !select(arg_2.zy, arg_2.yy, arg_0), true)), Struct_3(Struct_1(vec4<bool>(any(vec4<bool>(true, false, arg_1, false)), !arg_2.x, true, any(vec2<bool>(arg_0, arg_2.x))), -(-103f)), Struct_2(arg_3), vec4<u32>(75393u, 65744u, 134802u, ~41680u)), Struct_1(select(vec4<bool>(arg_1, true, true, all(arg_2.yx)), select(arg_2, !vec4<bool>(false, arg_1, false, arg_1), arg_2), !vec4<bool>(false, false, arg_2.x, false)), (-1584f + -290f) - trunc(-994f)), Struct_1(arg_2, max(-(-(-1000f)), (767f - -202f) + -2136f)), vec4<i32>(i32(-2147483648), arg_3.x, arg_3.x, arg_3.x));
    return arg_1 && arg_0;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_2(~(-firstLeadingBit(-vec3<i32>(-39385i, 0i, 15587i))));
    var var_1 = u_input.a >= (u_input.a % ~4294967295u);
    var var_2 = vec3<f32>(866f, -1283f, -(-(1803f + -242f)) * -((437f + -1524f) * (-2064f / 1208f)));
    global0 = array<vec3<u32>, 3>();
    global0 = array<vec3<u32>, 3>();
    return Struct_1(vec4<bool>(select(arg_0.x, !arg_0.x && false, !arg_0.x), !(!(!true)), func_4(arg_0.x, (arg_0.x | arg_0.x) || !arg_0.x, vec4<bool>(true & true, !arg_0.x, true, func_3(vec4<bool>(arg_0.x, true, true, arg_0.x), Struct_5(Struct_4(arg_0.zx, Struct_3(Struct_1(vec4<bool>(arg_0.x, false, true, arg_0.x), 939f), Struct_2(vec3<i32>(var_0.a.x, -99868i, var_0.a.x)), vec4<u32>(4294967295u, 86693u, 33192u, 2845u)), Struct_1(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), var_2.x), Struct_1(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), var_2.x), vec4<i32>(-25851i, -14721i, 1i, var_0.a.x)), Struct_4(arg_0.xx, Struct_3(Struct_1(vec4<bool>(true, arg_0.x, true, true), var_2.x), Struct_2(vec3<i32>(var_0.a.x, 72895i, 0i)), vec4<u32>(0u, u_input.a, u_input.a, 4294967295u)), Struct_1(vec4<bool>(true, arg_0.x, arg_0.x, false), var_2.x), Struct_1(vec4<bool>(false, true, arg_0.x, false), -1000f), vec4<i32>(var_0.a.x, -19716i, -1i, 2147483647i))))), vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x) ^ -var_0.a), !arg_0.x), -975f);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> Struct_3 {
    var var_0 = !arg_1.a.zx;
    global0 = array<vec3<u32>, 3>();
    var var_1 = Struct_1(select(vec4<bool>(false, !true, true, !true), select(vec4<bool>(all(vec2<bool>(var_0.x, false)), all(vec2<bool>(arg_1.a.x, arg_1.a.x)), false, arg_0.a.a.x), !select(arg_0.a.a, arg_0.a.a, true), (arg_0.c.x >= u_input.a) == true), -20740i <= (-14069i % (-1i + i32(-2147483648)))), arg_1.b);
    var var_2 = ~vec2<u32>(~arg_0.c.x, 1u);
    var var_3 = vec3<bool>(!((~arg_0.b.a.x < arg_0.b.a.x) || false), !(!select(arg_1.a.x, false, all(arg_1.a.xw))), func_1().x);
    return Struct_3(func_2(func_1()), Struct_2(~arg_0.b.a & -vec3<i32>(0i, arg_0.b.a.x, -30356i)), min(vec4<u32>(~abs(var_2.x), ~dot(vec2<u32>(arg_0.c.x, u_input.a), arg_0.c.zy), 4294967295u >> (0u / 119299u), dot(arg_0.c, vec4<u32>(0u, 0u, u_input.a, 36837u)) + (21942u - arg_0.c.x)), abs(max(vec4<u32>(4294967295u, var_2.x, arg_0.c.x, 40450u) >> vec4<u32>(0u, u_input.a, arg_0.c.x, 21080u), firstTrailingBit(vec4<u32>(var_2.x, 11082u, var_2.x, 4294967295u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_3(func_2(func_1()), Struct_2(min(firstTrailingBit(vec3<i32>(6009i, 1i, -1i)), vec3<i32>(13276i, -1i, 27651i))), vec4<u32>(8486u, dot(global0[~u_input.a], global0[~42780u]), 61738u / (1u + 1u), dot(clamp(vec3<u32>(u_input.a, 17866u, u_input.a), global0[27092u], vec3<u32>(u_input.a, 1505u, u_input.a)), ~global0[52181u]))), func_2(!func_1()));
    var_0 = Struct_3(func_5(func_5(func_5(func_5(Struct_3(Struct_1(vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, true), -1428f), var_0.b, vec4<u32>(u_input.a, 32519u, var_0.c.x, var_0.c.x)), var_0.a), func_5(Struct_3(Struct_1(var_0.a.a, var_0.a.b), Struct_2(vec3<i32>(var_0.b.a.x, -37373i, -859i)), vec4<u32>(9530u, 6501u, u_input.a, var_0.c.x)), Struct_1(vec4<bool>(false, true, false, var_0.a.a.x), var_0.a.b)).a), var_0.a), func_2(var_0.a.a.ywy)).a, Struct_2(-(-vec3<i32>(-55489i, i32(-2147483648), -31613i) >> (global0[var_0.c.x] % vec3<u32>(4294967295u, 19106u, var_0.c.x)))), min(~(~vec4<u32>(u_input.a, 8134u, 0u, var_0.c.x)), var_0.c));
    let var_1 = ~u_input.a;
    var var_2 = (round(1687f) >= 372f) & false;
    var_2 = func_3(!func_5(func_5(func_5(Struct_3(Struct_1(var_0.a.a, -389f), Struct_2(var_0.b.a), vec4<u32>(0u, u_input.a, 48115u, u_input.a)), var_0.a), var_0.a), Struct_1(vec4<bool>(true, false, true, var_0.a.a.x), var_0.a.b)).a.a, Struct_5(Struct_4(var_0.a.a.xx, Struct_3(Struct_1(vec4<bool>(false, false, var_0.a.a.x, var_0.a.a.x), var_0.a.b), var_0.b, vec4<u32>(u_input.a, var_0.c.x, 8142u, 10634u) ^ var_0.c), Struct_1(select(vec4<bool>(true, false, true, true), vec4<bool>(var_0.a.a.x, false, true, true), var_0.a.a.x), var_0.a.b), var_0.a, vec4<i32>(-var_0.b.a.x, abs(var_0.b.a.x), var_0.b.a.x, var_0.b.a.x)), Struct_4(!(!var_0.a.a.yy), func_5(func_5(Struct_3(var_0.a, Struct_2(var_0.b.a), vec4<u32>(17400u, u_input.a, 52474u, 1939u)), Struct_1(vec4<bool>(var_0.a.a.x, false, true, false), 147f)), var_0.a), Struct_1(select(vec4<bool>(true, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), var_0.a.a, vec4<bool>(false, var_0.a.a.x, false, false)), 1205f * var_0.a.b), func_5(func_5(Struct_3(var_0.a, var_0.b, var_0.c), Struct_1(vec4<bool>(false, var_0.a.a.x, true, true), -452f)), var_0.a).a, firstTrailingBit(vec4<i32>(43439i, 1i, -48909i, -24003i)))));
    let var_3 = var_0.b;
    let var_4 = func_5(func_5(func_5(Struct_3(var_0.a, var_0.b, var_0.c), func_5(func_5(Struct_3(var_0.a, Struct_2(vec3<i32>(var_3.a.x, var_0.b.a.x, 24064i)), var_0.c), var_0.a), func_5(Struct_3(Struct_1(var_0.a.a, var_0.a.b), var_0.b, var_0.c), var_0.a).a).a), func_5(func_5(func_5(Struct_3(var_0.a, Struct_2(var_3.a), vec4<u32>(u_input.a, u_input.a, var_0.c.x, u_input.a)), Struct_1(var_0.a.a, -361f)), Struct_1(var_0.a.a, var_0.a.b)), Struct_1(var_0.a.a, -var_0.a.b)).a), Struct_1(vec4<bool>(false, !func_5(Struct_3(Struct_1(var_0.a.a, -159f), Struct_2(var_0.b.a), vec4<u32>(4294967295u, var_1, 4294967295u, u_input.a)), Struct_1(vec4<bool>(var_0.a.a.x, var_0.a.a.x, true, var_0.a.a.x), var_0.a.b)).a.a.x, !any(var_0.a.a.xxx), true || (43718i < var_3.a.x)), ceil(513f))).a;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit((vec3<u32>(var_0.c.x, 26152u, 0u) | ~var_0.c.zwx) + ~vec3<u32>(var_0.c.x, 75747u, 0u)), abs(abs(global0[~0u >> 69817u])), var_3.a.x, select(~(~var_0.c.xwx + select(vec3<u32>(u_input.a, var_1, 51804u), vec3<u32>(0u, 4294967295u, u_input.a), true)), abs(firstTrailingBit(vec3<u32>(6276u, 1u, 4294967295u) + global0[43716u])), select(vec3<bool>(var_0.a.a.x, var_4.a.x, false), var_4.a.yyw, var_0.a.a.x)), ~firstTrailingBit(max(firstLeadingBit(global0[var_0.c.x]), var_0.c.wzx)));
}

