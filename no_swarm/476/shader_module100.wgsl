// {"0:0":[87,9,121,0,161,42,74,157,172,181,143,122,117,215,106,107]}
// Seed: 14341597067873602888

struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: bool = false;

fn func_3(arg_0: bool) -> vec3<f32> {
    return select(vec3<f32>(-1022f / select(global0.x, 729f, arg_0), min(global0.x - -1862f, -global0.x), global0.x) / -vec3<f32>(global0.x * global0.x, global0.x - -589f, -(-804f)), ((vec3<f32>(global0.x, global0.x, global0.x) + -vec3<f32>(-215f, 493f, global0.x)) + vec3<f32>(global0.x, global0.x, exp2(1000f))) - -(-vec3<f32>(-454f, -363f, global0.x)), !(!(!(!vec3<bool>(arg_0, false, arg_0)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<f32> {
    global1 = !any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true))) && true;
    let var_0 = ~(~(~firstTrailingBit(~vec2<u32>(13558u, 0u))));
    let var_1 = Struct_1(abs(abs(vec2<i32>(arg_2.d, i32(-2147483648)) % arg_3)), abs(-(vec2<i32>(-27515i, 2147483647i) >> u_input.a.xw) & vec2<i32>(-1i, dot(vec3<i32>(arg_0.a.b.x, arg_3.x, 1i), vec3<i32>(arg_3.x, 1i, -175i)))), ceil(vec3<f32>(-2083f, 1528f, -1079f)) / (vec3<f32>(arg_1.a.c.x, ceil(arg_1.a.c.x), 833f * arg_2.c.x) * (-arg_2.c - -arg_0.a.c)), arg_3.x);
    let var_2 = max(-(-((arg_2.c.x - arg_0.a.c.x) / (arg_0.a.c.x - 539f))), arg_1.a.c.x);
    var var_3 = Struct_3(var_1);
    return vec2<f32>(var_3.a.c.x, ceil(223f));
}

fn func_2() -> Struct_2 {
    var var_0 = 0i;
    global0 = ((sign(vec2<f32>(global0.x, global0.x)) + vec2<f32>(190f, -global0.x)) - func_4(Struct_2(Struct_1(vec2<i32>(2147483647i, 44478i), vec2<i32>(2147483647i, -1i), vec3<f32>(-712f, global0.x, -1000f), -4474i)), Struct_2(Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(0i, -44080i), vec3<f32>(837f, 1449f, global0.x), 1i)), Struct_1(vec2<i32>(i32(-2147483648), 0i), -vec2<i32>(-1i, -41921i), func_3(false), 2147483647i), vec2<i32>(2147483647i >> 89186u, 26660i / -1i))) * vec2<f32>(-(-(-(-936f))), ((global0.x - -946f) - -1742f) - (-(-884f) + (1494f - global0.x)));
    var var_1 = Struct_3(Struct_1(clamp(countOneBits(reverseBits(vec2<i32>(-1i, 2147483647i))), max(vec2<i32>(2147483647i, -34788i), vec2<i32>(62424i, -26507i)) % (vec2<i32>(0i, 0i) - vec2<i32>(-2554i, -26922i)), countOneBits(vec2<i32>(-18655i, 1607i) << vec2<u32>(31606u, u_input.a.x))), -select(vec2<i32>(-15845i, 27009i) + vec2<i32>(1i, 2147483647i), vec2<i32>(-62402i, 1i), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), func_3(!(31437i != -21833i)), -((-7151i >> u_input.a.x) % (55837i | i32(-2147483648)))));
    global1 = all(!select(vec4<bool>(-1470f != 218f, false, !true, false || false), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), !any(vec4<bool>(true, false, false, false))));
    var var_2 = -(-(-(-(-423f))) * 1279f);
    return Struct_2(Struct_1(vec2<i32>(-1i, ~var_1.a.b.x << reverseBits(u_input.a.x)), ~var_1.a.b / (var_1.a.b >> ~vec2<u32>(28330u, u_input.a.x)), vec3<f32>(global0.x, floor(1053f), 800f), dot(vec2<i32>(var_1.a.a.x, 2147483647i), var_1.a.b ^ vec2<i32>(var_1.a.d, var_1.a.d)) >> ~u_input.a.x));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_3(arg_0.a);
    global0 = vec2<f32>(519f, 1278f);
    let var_1 = Struct_3(Struct_1(arg_2.b, firstLeadingBit(~vec2<i32>(1i, arg_0.a.a.x)) % ~(~arg_0.a.a), -(var_0.a.c * -vec3<f32>(global0.x, -1669f, global0.x)), arg_3.x));
    let var_2 = select(select(select(!(!vec3<bool>(true, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), !(!vec3<bool>(false, false, true))), select(select(!vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), -130f == 214f), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), var_0.a.c.x < arg_2.c.x), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, false, true))), any(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)))), select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(!true, !false, 1i <= arg_0.a.b.x), vec3<bool>(true, true || true, !true)), vec3<bool>(any(!vec4<bool>(true, false, true, true)), !all(vec4<bool>(false, false, false, false)), false), !false), any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), !vec3<bool>(true, true, true), vec3<bool>(false, false, false)))));
    let var_3 = true;
    return func_2();
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_1(vec2<i32>(-48235i, arg_2.d), vec2<i32>(-arg_0.a.a.x, 0i), arg_0.a.c, arg_0.a.a.x >> clamp(countOneBits(dot(u_input.a, vec4<u32>(u_input.a.x, 48766u, 1u, 1u))), u_input.a.x, 4941u));
    let var_1 = arg_0;
    var var_2 = clamp(~(var_1.a.b.x >> ~u_input.a.x), -(-2147483647i) - var_1.a.d, -2147483647i) - (~1i - dot(vec2<i32>(-(-29826i), clamp(var_0.a.x, i32(-2147483648), var_0.b.x)), abs(var_1.a.a)));
    var_2 = abs(-min(firstTrailingBit(arg_0.a.d ^ arg_0.a.a.x), arg_2.b.x));
    let var_3 = vec2<i32>((var_0.d / ~var_0.b.x) & -18616i, ~var_0.d);
    return select(reverseBits(-func_2().a.d), var_0.d * 0i, !(-1068i != -(-1i)));
}

fn func_1() -> i32 {
    var var_0 = 875f;
    let var_1 = -abs(-(-vec2<f32>(-2617f, global0.x))) / vec2<f32>(global0.x, global0.x);
    global0 = ceil(vec2<f32>((-799f + -711f) * var_1.x, select(global0.x + -global0.x, 258f, (true || true) & (true | true))));
    var_0 = global0.x;
    let var_2 = !vec4<bool>(any(!vec4<bool>(true, false, false, true)), !true, true, true);
    return firstTrailingBit(func_6(func_5(func_2(), -func_4(Struct_2(Struct_1(vec2<i32>(-1i, 46117i), vec2<i32>(0i, 2147483647i), vec3<f32>(-2087f, 137f, -813f), -6868i)), Struct_2(Struct_1(vec2<i32>(-24846i, i32(-2147483648)), vec2<i32>(-13070i, 2147483647i), vec3<f32>(global0.x, global0.x, 670f), 29035i)), Struct_1(vec2<i32>(-18232i, 0i), vec2<i32>(-9248i, 1i), vec3<f32>(-998f, 614f, global0.x), 8073i), vec2<i32>(0i, 2147483647i)).x, func_2().a, reverseBits(vec2<i32>(-1i, -52i) & vec2<i32>(2147483647i, 2147483647i))), all(!vec3<bool>(false, false, false)), func_5(Struct_2(func_5(Struct_2(Struct_1(vec2<i32>(-1i, 3788i), vec2<i32>(40394i, 24080i), vec3<f32>(-830f, -1861f, 1781f), -24053i)), global0.x, Struct_1(vec2<i32>(0i, -12094i), vec2<i32>(-1i, 1i), vec3<f32>(1735f, -1000f, global0.x), 2147483647i), vec2<i32>(33578i, 0i)).a), (-777f - var_1.x) - (global0.x - var_1.x), Struct_1(-vec2<i32>(i32(-2147483648), -28731i), vec2<i32>(4905i, i32(-2147483648)) * vec2<i32>(-6649i, 1i), func_3(var_2.x), 11301i), min(vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, 0i))).a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -485f;
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(min(-(vec3<i32>(0i, 0i, -14557i) << u_input.a.zyz), vec3<i32>(0i, -27215i, 5066i)) << ~reverseBits(u_input.a.zwx), trunc(var_0), 2147483647i, firstLeadingBit(((-13898i * -57578i) & 2421i) << dot(~u_input.a.yw, vec2<u32>(u_input.a.x, 1u) & vec2<u32>(5573u, u_input.a.x))), ~(~countOneBits(u_input.a.x * 1u)));
}

