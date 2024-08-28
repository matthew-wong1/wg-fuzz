// {"0:0":[148,227,90,107,88,90,236,200,198,198,140,82,183,105,92,221]}
// Seed: 1433169385247730057

struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec2<u32> {
    var var_0 = 2147483647i;
    let var_1 = Struct_4(arg_0.c, arg_0.d.x, abs(arg_0.d.zx), arg_0.e.yz);
    var_0 = var_1.a.b;
    var var_2 = -arg_0.d.x;
    var var_3 = Struct_3(((firstTrailingBit(vec3<i32>(1i, var_1.a.b, 9461i)) & vec3<i32>(arg_0.c.b, var_1.a.b, -55260i)) * vec3<i32>(var_1.a.b, -16469i, ~var_1.a.b)) + ~countOneBits(-vec3<i32>(arg_0.c.b, -14303i, var_1.a.b)), max(~vec2<i32>(var_1.a.b, abs(0i)), ~clamp(vec2<i32>(6374i, arg_0.b) & vec2<i32>(arg_0.c.b, var_1.a.b), ~vec2<i32>(var_1.a.b, -36969i), ~vec2<i32>(20712i, 34541i))), arg_0.c);
    return reverseBits(u_input.b) - u_input.b;
}

fn func_2() -> Struct_5 {
    var var_0 = select(2147483647i, ~countOneBits(1i << u_input.a), any(vec3<bool>(true, !any(vec2<bool>(false, true)), true)));
    let var_1 = 31699i;
    let var_2 = Struct_5(Struct_2(func_3(Struct_2(select(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x), vec2<bool>(false, true)), var_1 & var_1, Struct_1(true, var_1), max(vec3<f32>(-480f, 1422f, -302f), vec3<f32>(1380f, -2018f, 658f)), !vec3<bool>(false, true, true)), (1106f >= 115f) || !true), var_1, Struct_1(select(true | false, true, 0i <= var_1), var_1), vec3<f32>(-209f, -302f * 585f, -1006f), !vec3<bool>(all(vec3<bool>(false, true, true)), any(vec2<bool>(true, true)), !true)), Struct_1(false, var_1), firstTrailingBit(vec3<u32>(1u + u_input.a, ~u_input.b.x, 21871u)) % ~(~(vec3<u32>(39682u, u_input.b.x, u_input.a) ^ vec3<u32>(1u, 55951u, 1u))));
    var_0 = 72393i / -1i;
    var var_3 = Struct_3(-(-(~(~vec3<i32>(0i, var_1, var_2.b.b)))), vec2<i32>(-(-var_1 * (2147483647i - var_2.a.b)), 30153i), var_2.a.c);
    return var_2;
}

fn func_4(arg_0: Struct_5) -> Struct_3 {
    let var_0 = step(vec3<f32>(ceil(180f / -arg_0.a.d.x), arg_0.a.d.x, max(trunc(arg_0.a.d.x + arg_0.a.d.x), floor(arg_0.a.d.x))), arg_0.a.d);
    let var_1 = u_input.a;
    let var_2 = -(round(-trunc(var_0)) / vec3<f32>(-arg_0.a.d.x, var_0.x, arg_0.a.d.x));
    var var_3 = u_input.b;
    var_3 = vec2<u32>(countOneBits(u_input.b.x), ~48178u);
    return Struct_3(vec3<i32>(685i, arg_0.b.b, arg_0.b.b) & vec3<i32>(arg_0.b.b, 15489i, i32(-2147483648)), vec2<i32>(dot(-vec3<i32>(44446i, -5926i, arg_0.a.b), ~vec3<i32>(84069i, arg_0.b.b, 0i)), -1i) & vec2<i32>(dot(clamp(vec3<i32>(arg_0.a.b, -20812i, 36290i), vec3<i32>(arg_0.b.b, 0i, 3282i), vec3<i32>(21864i, arg_0.a.c.b, arg_0.a.b)), select(vec3<i32>(-51626i, -13424i, arg_0.a.c.b), vec3<i32>(-48141i, arg_0.b.b, -1i), vec3<bool>(true, arg_0.a.e.x, arg_0.b.a))), arg_0.a.b), arg_0.b);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_3 {
    var var_0 = Struct_2((countOneBits(arg_2 ^ vec2<u32>(4294967295u, 56215u)) - vec2<u32>(firstTrailingBit(arg_2.x), 4294967295u)) - ~u_input.b, reverseBits(clamp(arg_0.c.b, dot(arg_1.a.yx, arg_1.a.zx), arg_0.b.x)), arg_0.c, vec3<f32>(step(-(-1596f), -(-481f - -1000f)), 751f, func_2().a.d.x), func_2().a.e);
    var var_1 = var_0.d.x;
    var var_2 = arg_1;
    var var_3 = vec2<f32>(-(-1647f), var_0.d.x);
    let var_4 = vec3<i32>(~(-38754i >> ~(~var_0.a.x)), var_2.a.x, ~(-1i));
    return Struct_3(vec3<i32>(abs(-72533i), (i32(-2147483648) | -22123i) / abs(79096i), var_4.x) % ~var_4, vec2<i32>(-12457i, max(-(i32(-2147483648)), ~arg_1.a.x) & arg_1.c.b), var_2.c);
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = firstLeadingBit(~(~select(vec2<i32>(1i, arg_1), vec2<i32>(arg_1, 1i) - vec2<i32>(arg_1, arg_1), vec2<bool>(arg_0.x, false))));
    var var_1 = arg_2;
    var_1 = -vec2<f32>(-416f, 370f) * vec2<f32>(var_1.x, abs(abs(var_1.x)));
    let var_2 = func_5(func_4(func_2()), Struct_3(-vec3<i32>(var_0.x & 11806i, ~2104i, -36020i), var_0, func_4(func_2()).c), vec2<u32>(abs(33730u) - 0u, abs(4294967295u + u_input.b.x)) >> ~vec2<u32>(100756u, ~26100u));
    let var_3 = vec2<u32>(27619u, (67165u >> dot(~vec3<u32>(u_input.b.x, u_input.b.x, 27402u), vec3<u32>(u_input.a, u_input.b.x, u_input.b.x))) >> dot(u_input.b, vec2<u32>(abs(u_input.a), dot(u_input.b, vec2<u32>(0u, 70365u)))));
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_2(~(~(vec2<u32>(0u, 79590u) / u_input.b)), 47106i - ~(-30792i), func_1(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), -54345i, vec2<f32>(sign(178f), -845f * -504f)), vec3<f32>(-1814f, -(654f - 557f), select(344f, 984f + 1135f, true)), !func_2().a.e), func_1(vec2<bool>(func_5(Struct_3(vec3<i32>(1i, -33789i, 0i), vec2<i32>(29948i, -780i), Struct_1(true, 2147483647i)), func_4(Struct_5(Struct_2(u_input.b, 0i, Struct_1(true, 1i), vec3<f32>(595f, -624f, 2500f), vec3<bool>(true, false, false)), Struct_1(true, 30793i), vec3<u32>(u_input.b.x, 1u, 56688u))), func_2().c.zx).c.a, any(select(vec2<bool>(true, true), vec2<bool>(false, true), true))), func_4(func_2()).a.x, -vec2<f32>(-557f, select(1308f, 225f, true))), vec3<u32>(~(~u_input.a), max(~u_input.b.x, ~u_input.b.x), 1u));
    let var_1 = max(vec4<u32>(4294967295u, max(4294967295u, 1u) | abs(countOneBits(u_input.a)), (var_0.a.a.x & max(53248u, u_input.b.x)) >> var_0.a.a.x, ~(~3614u) / var_0.a.a.x), abs(vec4<u32>(func_3(Struct_2(u_input.b, var_0.b.b, Struct_1(var_0.b.a, var_0.b.b), var_0.a.d, vec3<bool>(false, var_0.a.c.a, true)), var_0.a.e.x).x, 15919u / u_input.a, clamp(var_0.c.x, var_0.c.x, 4294967295u), 4294967295u)) / (vec4<u32>(max(0u, u_input.a), ~21254u, u_input.a | var_0.a.a.x, 4294967295u) * (vec4<u32>(32865u, 0u, var_0.a.a.x, 11760u) | (vec4<u32>(u_input.b.x, var_0.a.a.x, 1u, u_input.b.x) / vec4<u32>(var_0.c.x, var_0.a.a.x, 4294967295u, u_input.a)))));
    var var_2 = ~vec2<u32>(~5526u, 0u);
    let var_3 = func_2().a;
    var_2 = ~abs(u_input.b) << (var_0.a.a % ~(~(var_0.c.xz * u_input.b)));
    let var_4 = func_2();
    var var_5 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(-(-reverseBits(~vec3<i32>(var_4.a.c.b, var_0.b.b, var_5.b))), vec2<i32>(-1i, -(-var_0.b.b % func_5(Struct_3(vec3<i32>(var_0.b.b, 0i, -28220i), vec2<i32>(-58365i, 8133i), Struct_1(true, -44895i)), Struct_3(vec3<i32>(var_0.b.b, 2147483647i, 0i), vec2<i32>(var_5.b, -17825i), Struct_1(var_5.e.x, 2147483647i)), vec2<u32>(919u, 16927u)).c.b)), ~select(abs(vec3<i32>(51317i, var_3.b, var_0.a.c.b)), -vec3<i32>(1i, var_3.b, var_5.b), func_5(func_4(Struct_5(Struct_2(var_0.a.a, var_4.b.b, var_3.c, var_4.a.d, var_5.e), Struct_1(var_0.b.a, -38389i), vec3<u32>(4294967295u, var_4.a.a.x, 18257u))), Struct_3(vec3<i32>(var_5.c.b, var_3.c.b, var_0.b.b), vec2<i32>(var_3.c.b, var_0.b.b), var_5.c), vec2<u32>(var_4.c.x, 106113u) >> var_3.a).c.a), ~var_1.zyy, 1i);
}

