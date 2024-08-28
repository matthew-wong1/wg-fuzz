// {"0:0":[150,88,221,93,25,187,200,16,33,255,96,137,222,138,8,44,29,121,173,245,223,131,139,65]}
// Seed: 1953797172980710792

struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(-28540i, 42773i, 72213i, i32(-2147483648), 5911i, -1i, 1i, 1i, 13074i, 2147483647i, 5906i, 0i, 26498i, 34069i, -75804i, 2147483647i, 36754i, 1i, 0i, -30455i, 0i, 22962i);

var<private> global1: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(0i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, 29300i), vec3<i32>(21305i, 13022i, 1197i), vec3<i32>(1598i, 13497i, -23502i), vec3<i32>(78840i, -24113i, 7340i), vec3<i32>(-31459i, 2147483647i, i32(-2147483648)), vec3<i32>(1i, 11539i, -1i), vec3<i32>(0i, 2147483647i, -5693i), vec3<i32>(41956i, -1i, 1i), vec3<i32>(-13820i, 1i, -13228i), vec3<i32>(1i, -1i, i32(-2147483648)), vec3<i32>(-1i, 43383i, -1i), vec3<i32>(32552i, -1i, 45924i), vec3<i32>(2147483647i, i32(-2147483648), -19986i), vec3<i32>(41066i, 1i, -15747i), vec3<i32>(23479i, i32(-2147483648), 19113i), vec3<i32>(1i, -41866i, 0i), vec3<i32>(-13889i, 2147483647i, -35385i), vec3<i32>(-2476i, 73520i, 0i), vec3<i32>(-17373i, i32(-2147483648), -34547i), vec3<i32>(2147483647i, 16605i, -1i), vec3<i32>(-76371i, -5837i, i32(-2147483648)), vec3<i32>(-35666i, -35460i, i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)));

var<private> global2: Struct_2 = Struct_2(vec4<u32>(0u, 23801u, 0u, 27666u), 874f, Struct_1(vec2<f32>(1000f, -830f), false, -30668i, -35010i));

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<f32>(866f, 654f), false, -13708i, 0i));

var<private> global4: array<u32, 9> = array<u32, 9>(70509u, 10235u, 1u, 4294967295u, 1u, 52268u, 21440u, 0u, 22650u);

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: f32) -> vec4<f32> {
    let var_0 = ~(~abs(global2.a.yzz));
    return -(-(-(-vec4<f32>(1210f, global2.b, global2.c.a.x, 1000f))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>) -> f32 {
    global2 = Struct_2(arg_0, -1268f, global2.c);
    var var_0 = !(-(-floor(global2.c.a.x)) > 1396f);
    let var_1 = ~(~(~((vec2<u32>(38360u, global4[1u]) >> vec2<u32>(u_input.d.x, global2.a.x)) << firstLeadingBit(vec2<u32>(global2.a.x, 4294967295u)))));
    let var_2 = select(arg_1, vec4<bool>(!(!select(true, arg_1.x, true)), true, global2.c.b, !(global2.c.a.x == -global2.c.a.x)), !all(!arg_1.yz));
    let var_3 = global2.c;
    return -sign(func_2(false, arg_1.yzw, max(var_3.a.x - global2.b, -(-1773f))).x);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = !select(vec2<bool>(false, any(!vec4<bool>(arg_2.b, global2.c.b, arg_2.b, false))), vec2<bool>(any(select(vec3<bool>(false, true, global2.c.b), vec3<bool>(false, true, false), global2.c.b)), -52139i <= arg_2.d), select(select(vec2<bool>(global2.c.b, arg_2.b), vec2<bool>(global2.c.b, true), !vec2<bool>(global2.c.b, global2.c.b)), vec2<bool>(true, global2.c.b), vec2<bool>(all(vec4<bool>(global2.c.b, arg_2.b, global2.c.b, arg_2.b)), all(vec4<bool>(false, global2.c.b, arg_2.b, true)))));
    let var_1 = -(sign(vec4<f32>(arg_2.a.x, 993f, global2.c.a.x, arg_2.a.x) - sign(vec4<f32>(global2.c.a.x, -1209f, global2.b, global2.c.a.x))) + -func_2(any(vec3<bool>(false, true, global2.c.b)), vec3<bool>(global2.c.b, true, false), 1741f));
    global2 = Struct_2(reverseBits(global2.a) % firstTrailingBit(~clamp(global2.a, vec4<u32>(u_input.a, global4[u_input.d.x], 9947u, u_input.b), vec4<u32>(48032u, 84874u, arg_0, 4294967295u))), func_2(true, select(vec3<bool>(all(vec3<bool>(arg_2.b, false, true)), select(false, true, var_0.x), true || arg_2.b), select(vec3<bool>(true, true, false), vec3<bool>(arg_2.b, false, global2.c.b), false), vec3<bool>(!var_0.x, arg_2.c >= 0i, all(vec4<bool>(true, arg_2.b, arg_2.b, true)))), -func_3(~global2.a, vec4<bool>(false, true, false, true))).x, global2.c);
    var var_2 = global2.a.xw;
    global2 = Struct_2(reverseBits(global2.a << max(select(global2.a, vec4<u32>(global4[1u], 14988u, var_2.x, var_2.x), vec4<bool>(false, true, arg_2.b, var_0.x)), ~global2.a)), exp2(var_1.x * func_2(any(vec4<bool>(true, global2.c.b, arg_2.b, false)), select(vec3<bool>(true, global2.c.b, true), vec3<bool>(false, var_0.x, global2.c.b), true), var_1.x).x), global3[arg_0]);
    return Struct_2(~reverseBits((global2.a % vec4<u32>(global4[4294967295u], 6669u, global4[0u], global2.a.x)) << vec4<u32>(82710u, 37588u, var_2.x, 1u)), exp2(-(-global2.c.a.x)), Struct_1((-arg_2.a * vec2<f32>(global2.b, -607f)) / func_2(var_0.x, !vec3<bool>(global2.c.b, var_0.x, true), global2.b).wz, min(func_2(var_0.x, vec3<bool>(true, arg_2.b, false), global2.b).x, var_1.x + -789f) >= global2.b, reverseBits(u_input.c.x) - arg_1.x, (1448i % ~69338i) & global2.c.d));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = step(vec4<f32>(round(arg_1.b), global2.c.a.x, -step(global2.b - 232f, 895f / 110f), -(-(arg_1.c.a.x / -3134f))), -(-(vec4<f32>(888f, arg_1.c.a.x, global2.c.a.x, 499f) - vec4<f32>(-927f, global2.b, arg_1.b, 126f))) + -(-vec4<f32>(arg_1.b, 260f, 566f, global2.b) * select(vec4<f32>(arg_1.c.a.x, -1029f, -797f, arg_1.b), vec4<f32>(arg_1.c.a.x, arg_1.c.a.x, arg_1.b, 1000f), vec4<bool>(arg_1.c.b, arg_1.c.b, global2.c.b, global2.c.b))));
    var var_1 = true & (!true | (!select(true, false, true) | !(894f < 117f)));
    global3 = array<Struct_1, 1>();
    let var_2 = global2.c;
    global2 = func_1(27461u << 30527u, vec2<i32>(~u_input.c.x ^ global2.c.c, -9098i), func_1(countOneBits(~1u ^ u_input.a), ~abs(vec2<i32>(global2.c.d, u_input.c.x)), func_1(~77968u - abs(u_input.b), reverseBits(u_input.c + vec2<i32>(-1683i, global0[1u])), global3[global4[~dot(arg_1.a.yy, vec2<u32>(global2.a.x, 4294967295u))]]).c).c);
    return Struct_1(func_1(global4[global4[14248u]], min(u_input.c * u_input.c, arg_0), func_1(4294967295u ^ 1u, vec2<i32>(27503i, global0[u_input.a]) << vec2<u32>(arg_1.a.x, 44288u), Struct_1(arg_1.c.a, var_2.b, arg_0.x, 2147483647i)).c).c.a / max(global2.c.a, max(select(vec2<f32>(arg_1.c.a.x, var_0.x), var_0.wy, vec2<bool>(false, var_2.b)), vec2<f32>(var_2.a.x, -403f))), true, dot(~vec4<i32>(global0[25530u], var_2.d, global0[u_input.b], u_input.c.x) * -(-vec4<i32>(global0[4294967295u], global2.c.c, 58953i, 23864i)), vec4<i32>(-var_2.d, -(-arg_1.c.c), -(-(-25075i)), clamp(arg_1.c.d, arg_0.x, u_input.c.x))), dot(vec3<i32>(11430i, ~arg_1.c.d, 0i), vec3<i32>(-53270i, u_input.c.x, ~global0[arg_1.a.x])) << max(~global2.a.x, reverseBits(~20003u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_1(vec2<f32>(global2.b * abs(-1000f), -arg_0.a.x) - global2.c.a, false, ~(-(~global0[u_input.a])) * max(~global2.c.d << global4[firstLeadingBit(global2.a.x)], 1i), func_4(~(-select(u_input.c, vec2<i32>(-1i, u_input.c.x), false)), Struct_2(~vec4<u32>(global2.a.x, 4294967295u, 1u, arg_1.x), arg_2, Struct_1(vec2<f32>(arg_2, arg_2), arg_0.b, -28882i, -u_input.c.x))).d);
    var var_1 = func_4(vec2<i32>(arg_0.d ^ ~(arg_0.d % arg_0.c), u_input.c.x), func_1(43124u, ~(vec2<i32>(51965i, arg_0.c) ^ u_input.c), global3[global4[global4[47800u >> arg_1.x]]])).c;
    return func_4(vec2<i32>(abs(-24129i), -1i), func_1(~(~(~arg_1.x)), select(-vec2<i32>(arg_0.d, global0[73042u]), ~vec2<i32>(-5652i, -47509i), !vec2<bool>(arg_0.b, true)), func_1(~u_input.a, u_input.c, func_4(~vec2<i32>(var_0.d, u_input.c.x), func_1(u_input.d.x, vec2<i32>(62432i, -23020i), global2.c))).c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-global2.c.a, false, -(u_input.c.x << 1u), global0[global2.a.x]);
    global0 = array<i32, 22>();
    let var_1 = func_5(func_4(vec2<i32>(2147483647i, global2.c.c) % u_input.c, func_1(max(min(global2.a.x, global2.a.x), ~u_input.d.x), u_input.c, global3[u_input.b])), u_input.d, func_4(~(clamp(u_input.c, u_input.c, vec2<i32>(-4082i, global2.c.d)) >> ~global2.a.ww), Struct_2(global2.a, var_0.a.x, global2.c)).a.x, all(!vec2<bool>(global2.c.b, var_0.b)) | !(false & true));
    let var_2 = func_1(clamp(4294967295u, (global2.a.x % global4[32123u]) | global4[countOneBits(u_input.b) ^ ~global2.a.x], 12196u), ~(-u_input.c) ^ ((~u_input.c - vec2<i32>(u_input.c.x, global0[34662u])) & min(firstLeadingBit(vec2<i32>(1i, -1i)), u_input.c & vec2<i32>(var_0.c, 2147483647i))), func_4(-(vec2<i32>(var_0.c, -33952i) & u_input.c), Struct_2(~func_1(4294967295u, u_input.c, Struct_1(vec2<f32>(var_1.a.x, 1037f), var_0.b, u_input.c.x, var_0.d)).a, -1298f, Struct_1(var_1.a - var_1.a, !false, global2.c.c, var_1.d))));
    var var_3 = var_2.c;
    global0 = array<i32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~1u, 90772u), var_3.a.x, ~u_input.c, func_4(vec2<i32>(u_input.c.x, 0i % dot(global1[var_2.a.x], global1[global2.a.x])), var_2).a);
}

