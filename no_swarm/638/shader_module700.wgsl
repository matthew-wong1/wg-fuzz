// {"0:0":[239,175,95,250,218,152,15,35,141,215,200,202,237,70,224,137,173,153,124,132,42,88,232,60,49,171,12,118,212,12,14,190]}
// Seed: 5259367192190202788

struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec3<bool>) -> i32 {
    let var_0 = Struct_1(-(-trunc(min(872f, arg_0))), dot(abs(abs(u_input.a.xy)), ~vec2<u32>(countOneBits(u_input.a.x), u_input.d)), arg_2);
    global0 = !all(select(select(vec4<bool>(true, false, true, true), select(vec4<bool>(var_0.c.x, var_0.c.x, true, false), vec4<bool>(var_0.c.x, false, false, false), vec4<bool>(false, true, var_0.c.x, true)), !vec4<bool>(arg_2.x, arg_2.x, false, false)), select(vec4<bool>(true, var_0.c.x, arg_2.x, false), select(vec4<bool>(arg_2.x, arg_2.x, false, false), vec4<bool>(true, arg_2.x, var_0.c.x, var_0.c.x), vec4<bool>(arg_2.x, true, var_0.c.x, var_0.c.x)), !var_0.c.x), vec4<bool>(true, select(var_0.c.x, true, true), any(arg_2.xx), false)));
    global0 = var_0.c.x;
    let var_1 = Struct_2(var_0, arg_1.a, (abs(u_input.a << vec3<u32>(var_0.b, 832u, var_0.b)) & vec3<u32>(select(35585u, 4294967295u, false), ~4707u, var_0.b)) + countOneBits(~(~vec3<u32>(4294967295u, 18477u, u_input.a.x))), var_0);
    let var_2 = Struct_3(arg_1.a);
    return -var_2.a.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: bool) -> Struct_2 {
    global0 = arg_0.x <= 4294967295u;
    let var_0 = !((firstTrailingBit(abs(-7209i)) | -(65510i | u_input.c.x)) <= (func_3(-1481f / -1480f, Struct_3(u_input.c), vec3<bool>(arg_3, arg_2.x, arg_3)) >> ~(~arg_0.x)));
    let var_1 = !(!all(select(select(vec4<bool>(var_0, false, var_0, true), vec4<bool>(arg_2.x, arg_2.x, var_0, false), vec4<bool>(true, true, false, false)), !vec4<bool>(arg_2.x, var_0, true, arg_2.x), !vec4<bool>(true, false, true, false))));
    var var_2 = trunc(round((-(-1207f) + trunc(-1607f)) / -(-(-715f))));
    global0 = all(vec4<bool>(false, all(vec2<bool>(all(vec3<bool>(false, true, var_0)), false)), !arg_3, !any(!vec4<bool>(var_1, true, false, true))));
    return Struct_2(Struct_1(-(-1617f), ~select(0u, ~1u, any(vec4<bool>(arg_3, true, var_1, var_0))), select(!vec3<bool>(false, var_0, true), vec3<bool>(any(vec2<bool>(true, true)), true, arg_3 | var_0), false)), -(-min(vec3<i32>(28721i, u_input.c.x, u_input.b), firstLeadingBit(vec3<i32>(arg_1.x, -33103i, -33016i)))), ~abs(vec3<u32>(0u, u_input.d, u_input.d)), Struct_1(-exp2(682f / -1169f), 1u, select(!(!vec3<bool>(arg_2.x, arg_2.x, var_1)), select(vec3<bool>(arg_3, false, false), vec3<bool>(arg_3, true, arg_2.x), vec3<bool>(false, arg_2.x, true)), any(vec4<bool>(true, false, arg_2.x, var_1)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    global0 = any(vec2<bool>(arg_0.d.c.x, !arg_0.a.c.x));
    let var_0 = arg_0.d;
    let var_1 = max(abs(floor(var_0.a)), var_0.a);
    let var_2 = Struct_2(func_2(max(vec4<u32>(arg_0.d.b, u_input.a.x, var_0.b, 77703u) / vec4<u32>(38192u, 74409u, u_input.a.x, u_input.a.x), vec4<u32>(~0u, 1u, firstLeadingBit(arg_0.c.x), u_input.a.x)), vec2<i32>(1i, arg_1.a.x), arg_0.a.c.xz, ((1u & var_0.b) / arg_0.d.b) <= arg_0.c.x).d, arg_1.a, (~countOneBits(vec3<u32>(u_input.a.x, u_input.d, 48983u)) + arg_0.c) << vec3<u32>(select(4294967295u, ~4294967295u, false), firstTrailingBit(~14717u), u_input.d), func_2(~vec4<u32>(0u - 1u, u_input.a.x >> var_0.b, ~arg_0.c.x, u_input.d | 26784u), firstTrailingBit(max(-arg_0.b.zz, u_input.c.yz)), var_0.c.xz, any(vec3<bool>(select(var_0.c.x, false, var_0.c.x), !arg_0.a.c.x, any(arg_0.a.c)))).d);
    let var_3 = clamp(-(-max(vec4<i32>(-30621i, -1i, 1i, u_input.b), vec4<i32>(arg_0.b.x, var_2.b.x, 1i, -28618i))) / ~vec4<i32>(-4035i, 1i, i32(-2147483648) - u_input.b, arg_0.b.x), countOneBits(vec4<i32>(-arg_0.b.x, ~var_2.b.x, var_2.b.x, (-8232i * arg_0.b.x) | u_input.c.x)), (~vec4<i32>(2147483647i, -1i, -1i, 28754i) << countOneBits(~vec4<u32>(4294967295u, 41395u, 1u, u_input.d))) - (-abs(vec4<i32>(arg_1.a.x, arg_0.b.x, var_2.b.x, arg_1.a.x)) >> ~(~vec4<u32>(19738u, u_input.a.x, 4294967295u, var_2.d.b))));
    return -516f / -467f;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_1(arg_1.x * max(-arg_1.x, func_4(func_2(vec4<u32>(387u, u_input.d, 1u, 0u), vec2<i32>(1i, arg_2.x), vec2<bool>(arg_0, false), false), Struct_3(vec3<i32>(arg_2.x, u_input.b, 0i)))), ~24893u, func_2(~(vec4<u32>(u_input.a.x, 85661u, u_input.a.x, u_input.a.x) | vec4<u32>(58149u, u_input.a.x, 7571u, 18339u)) % ((vec4<u32>(44061u, u_input.a.x, 5402u, u_input.a.x) & vec4<u32>(u_input.a.x, 1u, 1u, 13295u)) * ~vec4<u32>(u_input.d, 0u, 51634u, 64655u)), ~vec2<i32>(~u_input.b, arg_2.x), vec2<bool>(all(vec2<bool>(false, true)), !(!arg_0)), !any(!vec3<bool>(arg_0, arg_0, false))).d.c);
    let var_1 = var_0.c.yx;
    global0 = true || !(-1743f == 324f);
    let var_2 = 14883u << var_0.b;
    global0 = !arg_0;
    return Struct_3(vec3<i32>(~1i, select(2147483647i, u_input.b, true) >> var_2, ~((1i + 1i) ^ arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(-1818f, -1000f);
    global0 = select(false || !false, !(!(true & any(vec3<bool>(true, true, true)))), !(false == true));
    let var_1 = ~(firstLeadingBit(u_input.a) << u_input.a);
    global0 = ((~(~u_input.a.x) & ~(var_1.x + 29826u)) & max(~var_1.x >> ~var_1.x, 63589u)) == 0u;
    global0 = true & true;
    let var_2 = false;
    var var_3 = func_1(!(!all(select(vec3<bool>(true, var_2, var_2), vec3<bool>(true, var_2, var_2), false))), vec2<f32>(var_0.x, -575f - var_0.x), -(vec3<i32>(15266i, ~u_input.b, 1i) << (vec3<u32>(4294967295u, 41809u, u_input.a.x) - vec3<u32>(var_1.x, u_input.d, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs((var_3.a | vec3<i32>(u_input.c.x, u_input.b, var_3.a.x)) * u_input.c) << vec3<u32>(u_input.a.x, var_1.x, reverseBits(var_1.x * 33361u)));
}

