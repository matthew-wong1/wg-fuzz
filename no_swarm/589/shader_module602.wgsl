// {"0:0":[5,112,231,93,63,104,88,158,250,67,140,71,130,54,0,172]}
// Seed: 12675621981479913479

struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_3,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: Struct_3 = Struct_3(vec2<f32>(1984f, -1891f));

var<private> global2: array<Struct_1, 11>;

var<private> global3: Struct_3;

fn func_3(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = vec4<bool>(false, global0[~((4294967295u * 13598u) ^ 48769u)] >= (482f + ((2724f + global1.a.x) + select(-358f, 691f, false))), any(!select(vec3<bool>(false, true, false), !vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true))), any(!vec3<bool>(u_input.a.x >= u_input.b, true, false)));
    var var_1 = vec4<u32>(u_input.b, reverseBits((u_input.b ^ 31131u) + 0u), 0u, dot(firstLeadingBit(u_input.a.yz), vec2<u32>(~14101u, 48756u % u_input.b))) ^ vec4<u32>(~(~4294967295u), ~1u, dot((u_input.a >> u_input.a) * vec3<u32>(u_input.b, u_input.b, u_input.b), ~(u_input.a << u_input.a)), 996u % u_input.b);
    var var_2 = vec3<i32>(i32(-2147483648), -43495i ^ -3019i, reverseBits(reverseBits(6400i ^ 5699i)) * clamp((-15446i + 333i) + (4408i % -69858i), abs(-1i - 2147483647i), ~abs(-33802i)));
    global3 = arg_0;
    var var_3 = 0i;
    return round(sign(vec2<f32>(global1.a.x * arg_0.a.x, 687f))) * -round(global1.a);
}

fn func_2(arg_0: vec4<i32>) -> bool {
    let var_0 = global2[~43658u];
    global1 = Struct_3(max(-func_3(Struct_3(vec2<f32>(373f, -381f))) / (vec2<f32>(318f, global0[12891u]) + global1.a), vec2<f32>(-global0[firstTrailingBit(var_0.a.x)], abs(global3.a.x))));
    global0 = array<f32, 7>();
    var var_1 = min(abs(global1.a.x) / (-191f - -(-175f)), exp2(529f - (global0[17837u] * global1.a.x))) - global3.a.x;
    let var_2 = -firstLeadingBit(~(-(arg_0.x & -2477i)));
    return var_0.a.x < 16511u;
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: vec3<f32>) -> Struct_3 {
    let var_0 = Struct_4(~(-(abs(vec4<i32>(10072i, -40470i, 2147483647i, 2147483647i)) ^ firstTrailingBit(vec4<i32>(0i, i32(-2147483648), 0i, -13790i)))), global2[firstLeadingBit(~(max(arg_2.x, 35760u) * 1u))], Struct_3(vec2<f32>(min(sign(global0[arg_2.x]), -274f), -(-1000f) + -222f)), -((-26343i - reverseBits(1i)) % clamp(i32(-2147483648) + 19562i, ~33156i, 0i ^ -42493i)), firstTrailingBit(arg_2.x));
    let var_1 = -((select(floor(global1.a), vec2<f32>(-1626f, var_0.c.a.x), false) + vec2<f32>(-1951f, trunc(-997f))) + -(exp2(vec2<f32>(-1000f, arg_1.x)) * vec2<f32>(618f, global3.a.x)));
    var var_2 = !all(vec2<bool>(false, arg_0));
    global0 = array<f32, 7>();
    let var_3 = vec4<i32>(clamp(46837i, var_0.a.x, select(var_0.d ^ -var_0.d, dot(var_0.a.ywx, var_0.a.wxy), true)), 25508i, var_0.a.x, var_0.b.b);
    return var_0.c;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> vec2<f32> {
    global3 = func_4(any(select(select(arg_0, select(vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(arg_0.x, arg_0.x, false, false), vec4<bool>(false, false, arg_0.x, arg_0.x)), arg_0.x || arg_0.x), vec4<bool>(arg_1 >= arg_1, false, arg_0.x, func_2(vec4<i32>(27514i, arg_1, -1i, -21709i))), !false)), vec2<f32>(1819f, min(-288f, -919f) * -global1.a.x), select(vec4<u32>(max(u_input.a.x, u_input.a.x * 18460u), (u_input.a.x >> 4422u) & ~u_input.b, select(u_input.b << u_input.b, u_input.a.x, true), u_input.b << 13275u), ~vec4<u32>(6186u ^ u_input.b, ~1u, 4294967295u, ~u_input.a.x), true), vec3<f32>(global0[4294967295u] * -293f, -(-494f / global0[11694u]) * (-global3.a.x - -(-1262f)), -373f));
    var var_0 = vec3<u32>(u_input.b & (max(u_input.a.x, u_input.a.x) + u_input.a.x), ~u_input.a.x, ~u_input.b);
    global0 = array<f32, 7>();
    var var_1 = -845f;
    var var_2 = Struct_2(select(vec4<bool>(abs(u_input.a.x) == 0u, arg_0.x || false, false, false && (0u >= 52127u)), arg_0, all(!(!vec2<bool>(arg_0.x, arg_0.x)))), ~(var_0.x ^ countOneBits(~45508u)), arg_0.x, !vec4<bool>(false, false, all(!arg_0), true));
    return -(vec2<f32>(trunc(global3.a.x - -1568f), -round(global1.a.x)) / (func_3(Struct_3(vec2<f32>(global1.a.x, global3.a.x))) - global3.a));
}

fn func_5(arg_0: vec2<f32>) -> Struct_3 {
    global2 = array<Struct_1, 11>();
    var var_0 = min(15478i, select(abs(firstTrailingBit(max(1i, -340i))), -65428i, !true));
    let var_1 = Struct_4(-max(-vec4<i32>(50867i, -1i, 2147483647i, -30759i), vec4<i32>(i32(-2147483648), i32(-2147483648), -18640i, 0i)) * ~(-(vec4<i32>(34148i, -1i, 1i, 1i) + vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 17934i))), Struct_1(~(~firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, 40871u))), (-1i >> u_input.a.x) - dot(-vec3<i32>(-11177i, -8731i, 0i), ~vec3<i32>(27199i, -17193i, 1i))), func_4(false, -global3.a, ~vec4<u32>(u_input.a.x, 9859u, 4294967295u, 1u) + vec4<u32>(u_input.a.x, 44311u - 1u, 38010u + 59591u, reverseBits(u_input.b)), ceil(vec3<f32>(-361f, 1103f + 197f, -530f))), abs(~clamp(max(-1i, 2147483647i), 5903i - 10772i, select(i32(-2147483648), 1i, false))), u_input.b);
    var var_2 = var_1.d != (var_1.b.b >> var_1.e);
    var_2 = any(select(select(!vec3<bool>(false, false, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), vec3<bool>(444u > 4294967295u, true, all(vec3<bool>(false, false, true)))), vec3<bool>((true || false) && (false | true), !(var_1.c.a.x > global3.a.x), (0u >= 1u) || true), true));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (572f - max(global1.a.x, -global3.a.x)) - select(global0[~firstLeadingBit(0u << u_input.a.x)], -(-abs(376f)), false);
    let var_1 = !all(!vec2<bool>(!true, u_input.a.x != u_input.b));
    global0 = array<f32, 7>();
    global1 = func_5(func_1(vec4<bool>(false, var_1, false, !(!var_1)), firstLeadingBit(min(0i, -47762i))));
    var var_2 = Struct_3(vec2<f32>(min(global0[clamp(countOneBits(10437u), 3764u, 61697u)], -(-var_0)), -100f));
    var var_3 = abs(-dot(abs(vec4<i32>(1i, 8591i, -1i, i32(-2147483648))) * clamp(vec4<i32>(-49169i, 2354i, -1i, 34233i), vec4<i32>(-13633i, i32(-2147483648), 2147483647i, 1706i), vec4<i32>(1i, i32(-2147483648), -54494i, -1i)), (vec4<i32>(-802i, -1i, -47276i, i32(-2147483648)) % vec4<i32>(30626i, 2147483647i, 1i, 0i)) + vec4<i32>(2147483647i, 25375i, 29528i, 1i)));
    var var_4 = ~38576i;
    var var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(firstTrailingBit(reverseBits(reverseBits(13393u))), firstLeadingBit(var_5.x) | select(~u_input.b, 4294967295u >> var_5.x, var_1), var_5.x), ~vec3<i32>(abs(-1i * 12271i), ~(i32(-2147483648)) >> ~1u, firstLeadingBit(countOneBits(0i))));
}

