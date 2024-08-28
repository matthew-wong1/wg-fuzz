// {"0:0":[156,208,132,146,93,243,82,216]}
// Seed: 9112767953439273431

struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 18> = array<vec4<i32>, 18>(vec4<i32>(42864i, 18844i, 25631i, -1i), vec4<i32>(0i, i32(-2147483648), 22373i, 1i), vec4<i32>(-30324i, 68398i, -9957i, -1i), vec4<i32>(i32(-2147483648), 60916i, 2147483647i, i32(-2147483648)), vec4<i32>(-1i, 2147483647i, 1i, -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 21625i), vec4<i32>(-15105i, i32(-2147483648), -28058i, -35022i), vec4<i32>(38010i, 2147483647i, 5243i, -1i), vec4<i32>(-27579i, -10328i, 1i, 0i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 0i), vec4<i32>(1i, 2147483647i, 2147483647i, 745i), vec4<i32>(1i, i32(-2147483648), 1i, 0i), vec4<i32>(-37735i, 62494i, 0i, 8570i), vec4<i32>(0i, -1i, 29261i, 2147483647i), vec4<i32>(22867i, i32(-2147483648), 1i, -6927i), vec4<i32>(73437i, 0i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, -22859i, 2147483647i, 2147483647i), vec4<i32>(-305i, 2147483647i, 0i, 0i));

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = arg_0.b.a.zy >> arg_0.b.a.zx;
    let var_1 = ~select(vec2<i32>(~(-30812i * 1i), firstLeadingBit(~60899i)), vec2<i32>(-(~36744i), 7858i), !arg_0.b.b.xz);
    let var_2 = !false;
    var var_3 = 0u;
    var var_4 = arg_0.b.b;
    return any(!vec2<bool>(arg_0.b.b.x & select(false, var_2, true), arg_0.b.b.x));
}

fn func_2(arg_0: f32) -> vec4<i32> {
    global0 = array<vec4<i32>, 18>();
    var var_0 = -254f;
    let var_1 = Struct_5(max(vec2<u32>(~4308u, ~(u_input.b & u_input.a)), vec2<u32>(firstLeadingBit(countOneBits(4294967295u)), u_input.a)), arg_0, all(select(vec3<bool>(func_3(Struct_3(-2156f, Struct_1(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<bool>(true, false, false), 767f))), any(vec2<bool>(true, true)), func_3(Struct_3(-403f, Struct_1(vec3<u32>(45765u, u_input.b, u_input.b), vec3<bool>(false, true, true), arg_0)))), !(!vec3<bool>(true, false, true)), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true))), vec4<u32>(countOneBits(u_input.a) << 1946u, ~(~1u), 4294967295u, clamp(u_input.b, ~u_input.b, ~(50393u & 1u))));
    let var_2 = min(ceil(-249f + max(-481f * 1489f, -267f / -936f)), -(-max(arg_0, -814f)) - 611f);
    return -(~select(global0[u_input.b | u_input.b], vec4<i32>(-(-1i), -(-36383i), -1i * 52719i, 31894i << 0u), (-1i * 27800i) == (54629i + i32(-2147483648))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: i32) -> Struct_3 {
    let var_0 = arg_0.d.wxz * select(arg_1.b.b.a, arg_1.b.b.a, vec3<bool>(arg_0.c, false, any(arg_1.c.b.yy)));
    global0 = array<vec4<i32>, 18>();
    let var_1 = Struct_1(max(~(~(vec3<u32>(var_0.x, 12228u, 6210u) - vec3<u32>(arg_0.d.x, 20347u, 4294967295u))), min(select(vec3<u32>(24632u, 0u, 4294967295u), vec3<u32>(1u, 0u, u_input.b), !false), select(var_0, var_0, arg_2))), !(!(!(!vec3<bool>(arg_2.x, false, true)))), -ceil(arg_1.c.c));
    let var_2 = 656f;
    global0 = array<vec4<i32>, 18>();
    return Struct_3(exp2(var_2), arg_1.b.b);
}

fn func_1() -> f32 {
    global0 = array<vec4<i32>, 18>();
    var var_0 = func_4(Struct_5(vec2<u32>(u_input.b, ~(~77273u)), sign(-trunc(972f)), false, vec4<u32>(abs(u_input.b | 0u), 4294967295u, ~(~56598u), u_input.a)), Struct_4(vec4<i32>((5498i << u_input.a) + (2147483647i | 0i), -(-(i32(-2147483648))), dot(min(vec4<i32>(-37456i, -1i, -39583i, 9175i), vec4<i32>(-12296i, 0i, 0i, 5387i)), func_2(-1000f)), clamp(5216i | 5489i, 1i, -6792i)), Struct_3(352f, Struct_1(clamp(vec3<u32>(4294967295u, 4294967295u, u_input.b), vec3<u32>(0u, 1u, 33031u), vec3<u32>(u_input.a, u_input.b, 54455u)), !vec3<bool>(false, false, false), -(-1892f))), Struct_1(reverseBits(~vec3<u32>(0u, 3287u, u_input.b)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), -(-(-2036f)))), !select(!vec3<bool>(false, true, false), vec3<bool>(true, true, false), !false || true), ~(-1i));
    let var_1 = select(((step(vec3<f32>(var_0.a, var_0.b.c, -926f), vec3<f32>(1951f, 1000f, var_0.b.c)) + (vec3<f32>(-1000f, 726f, var_0.a) - vec3<f32>(var_0.a, var_0.b.c, var_0.b.c))) + (floor(vec3<f32>(var_0.b.c, -794f, -1811f)) / abs(vec3<f32>(739f, -589f, var_0.a)))) - (((vec3<f32>(-267f, var_0.a, -1389f) + vec3<f32>(var_0.b.c, var_0.b.c, var_0.a)) / -vec3<f32>(-2482f, var_0.b.c, var_0.a)) + vec3<f32>(sign(var_0.a), 1550f * var_0.b.c, step(var_0.a, -735f))), -vec3<f32>(trunc(403f), -(var_0.a + var_0.b.c), min(-var_0.a, abs(-879f))), !false);
    global0 = array<vec4<i32>, 18>();
    let var_2 = true;
    return var_0.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(-func_1() >= min(-230f / func_1(), (-1000f * -863f) - -(-1512f)), true);
    global0 = array<vec4<i32>, 18>();
    var var_1 = !select(select(select(select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, var_0.x, false, var_0.x), var_0.x), !var_0.x), !vec4<bool>(var_0.x, var_0.x, true, var_0.x), select(vec4<bool>(var_0.x, true, true, var_0.x), select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(true, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), !false)), vec4<bool>(false, 0u > (u_input.b & 0u), var_0.x, false), false);
    let var_2 = Struct_5(vec2<u32>(u_input.b, select(75484u, u_input.a, true) * u_input.a) << ~(select(vec2<u32>(2832u, u_input.b), vec2<u32>(u_input.a, 12694u), var_0.x) | (vec2<u32>(70669u, u_input.a) / vec2<u32>(u_input.a, u_input.a))), abs((1191f + -1444f) * -1528f) * 562f, false, ~(~abs(vec4<u32>(u_input.b, u_input.a, u_input.a, 12469u)) & vec4<u32>(~u_input.b, dot(vec4<u32>(u_input.b, u_input.a, 89354u, u_input.b), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.b)), 1u / 1u, ~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), exp2((var_2.b / (var_2.b / -424f)) - 306f), 1036i, max(-var_2.b, exp2(var_2.b)));
}

