// {"0:0":[87,170,219,158,41,182,61,182,227,239,231,87,60,26,60,4]}
// Seed: 770485580429951791

struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: vec2<f32> = vec2<f32>(-659f, 1386f);

var<private> global2: array<u32, 23>;

var<private> global3: array<vec2<u32>, 1>;

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32) -> bool {
    global3 = array<vec2<u32>, 1>();
    let var_0 = Struct_3(Struct_2(!vec2<bool>(all(vec2<bool>(global0.x, true)), !true), Struct_1(firstTrailingBit(vec4<u32>(global2[global2[arg_1.a.x]], 107418u, global2[arg_1.a.x], global2[34001u]) & arg_1.a)), arg_1, true), select(~select(vec2<u32>(1225u, global2[44021u]), reverseBits(vec2<u32>(arg_1.a.x, arg_1.a.x)), !false), vec2<u32>(countOneBits(u_input.a.x), u_input.a.x + u_input.a.x) % abs(~global3[18964u]), true), !(!vec2<bool>(!false, !false)), 0u);
    let var_1 = Struct_4(-(~(-vec2<i32>(-22940i, 10046i)) / (vec2<i32>(-30930i, 3399i) ^ ~vec2<i32>(40108i, 1i))), Struct_3(var_0.a, firstTrailingBit(var_0.b), global0.xy, 1u), 4626i / (-4742i * -(-4816i)), var_0.b & vec2<u32>(global2[abs(min(27080u, 0u))], arg_1.a.x));
    global3 = array<vec2<u32>, 1>();
    var var_2 = ((abs(abs(-28976i)) & -(var_1.c << global2[var_0.b.x])) - var_1.c) & firstTrailingBit(var_1.a.x);
    return all(select(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, global0.x), global0.x), vec3<bool>(var_0.c.x, !var_0.a.a.x, 201f <= 1929f), any(!vec4<bool>(false, var_1.b.a.d, global0.x, false))), select(vec3<bool>(false, false, !false), select(!vec3<bool>(false, true, var_1.b.a.a.x), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, var_0.a.d, var_0.a.a.x), true), all(vec4<bool>(var_0.c.x, var_0.a.d, true, var_1.b.c.x))), !select(vec3<bool>(true, var_0.c.x, global0.x), vec3<bool>(true, true, global0.x), vec3<bool>(true, var_1.b.c.x, global0.x))), any(!global0.yx)));
}

fn func_2() -> i32 {
    global2 = array<u32, 23>();
    let var_0 = Struct_2(vec2<bool>(!global0.x || (func_3(vec2<f32>(-1000f, -901f), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 63868u, global2[0u])), global1.x) | (global1.x > global1.x)), any(global0.zy)), Struct_1(u_input.a), Struct_1(u_input.a), global0.x);
    global0 = !select(select(select(select(vec3<bool>(global0.x, var_0.a.x, true), vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, var_0.d, true)), select(vec3<bool>(global0.x, global0.x, var_0.d), vec3<bool>(false, false, global0.x), vec3<bool>(var_0.d, var_0.a.x, true)), global0.x), !select(vec3<bool>(true, var_0.a.x, true), vec3<bool>(true, global0.x, true), vec3<bool>(true, global0.x, global0.x)), vec3<bool>(global0.x, false, !global0.x)), !(!vec3<bool>(var_0.a.x, global0.x, true)), !vec3<bool>(false, false, func_3(vec2<f32>(global1.x, global1.x), var_0.c, global1.x)));
    let var_1 = Struct_2(global0.zy, Struct_1(vec4<u32>(0u, 52954u, global2[reverseBits(firstTrailingBit(global2[4294967295u]))], ~0u - (var_0.b.a.x << var_0.b.a.x))), Struct_1(min(vec4<u32>(25558u, var_0.b.a.x, global2[global2[global2[80581u]]], global2[77177u]) + vec4<u32>(4294967295u, 42947u, 0u, 1575u), var_0.b.a) / (~vec4<u32>(1u, var_0.b.a.x, 9635u, global2[0u]) + firstTrailingBit(u_input.a))), any(!vec4<bool>(-18780i < 0i, var_0.a.x || true, global0.x, true)));
    var var_2 = ceil(global1.x);
    return abs(~(abs(2147483647i) - (0i % (i32(-2147483648) & 2147483647i))));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>) -> bool {
    let var_0 = all(global0.zy);
    global3 = array<vec2<u32>, 1>();
    global2 = array<u32, 23>();
    var var_1 = countOneBits(arg_2.zxw);
    var var_2 = vec3<i32>(clamp(1i, arg_2.x, var_1.x + func_2()), arg_2.x / arg_2.x, -15976i);
    return select(!true, !(!(!true)) | false, (((65904u * global2[16736u]) - global2[min(17964u, 13352u)]) > reverseBits(0u | arg_0.b.a.x)) != !(!(arg_0.a.x && var_0)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>) -> Struct_1 {
    global2 = array<u32, 23>();
    global1 = -(-(-(-round(arg_0.zy))));
    var var_0 = false;
    var var_1 = countOneBits(vec3<i32>(firstLeadingBit(dot(vec4<i32>(38585i, -15084i, -40733i, 0i) + vec4<i32>(-1823i, 1i, 2147483647i, 1i), vec4<i32>(1i, -1i, 2147483647i, i32(-2147483648)) ^ vec4<i32>(i32(-2147483648), 1i, 11314i, 24330i))), -17776i, firstLeadingBit(abs(~(-3827i)))));
    let var_2 = global0.zz;
    return Struct_1(select((vec4<u32>(global2[u_input.a.x], global2[global2[4294967295u]], 4294967295u, global2[global2[41997u]]) ^ vec4<u32>(u_input.a.x, 1421u, u_input.a.x, 47885u)) ^ abs(u_input.a), firstLeadingBit(vec4<u32>(global2[~0u], abs(77495u), 31100u, min(0u, 97530u))), !vec4<bool>(true, false, !global0.x, false)));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = clamp(~u_input.a.x, 17977u << ~(~min(global2[4294967295u], arg_0.b.a.x)), (arg_0.b.a.x % 9019u) * ~global2[~firstTrailingBit(global2[u_input.a.x])]);
    let var_1 = round(650f);
    var var_2 = (~func_2() % (i32(-2147483648) + ((-1i & 0i) & -16748i))) | abs(reverseBits(i32(-2147483648) << u_input.a.x) << (firstLeadingBit(4294967295u) % func_4(vec3<f32>(-741f, -1056f, -515f), vec3<bool>(global0.x, true, global0.x)).a.x));
    let var_3 = firstTrailingBit(select(~dot(vec4<u32>(9048u, arg_0.c.a.x, global2[u_input.a.x], arg_0.c.a.x), ~arg_0.c.a), ~71225u * (clamp(0u, 0u, u_input.a.x) >> global2[~global2[1u]]), all(!select(vec4<bool>(false, arg_0.d, global0.x, arg_0.a.x), vec4<bool>(arg_0.d, global0.x, true, false), global0.x))));
    global3 = array<vec2<u32>, 1>();
    return Struct_2(!(!select(vec2<bool>(global0.x, false), !arg_0.a, !true)), func_4(min(-(vec3<f32>(-233f, global1.x, -109f) / vec3<f32>(598f, global1.x, global1.x)), -round(vec3<f32>(138f, global1.x, -1055f))), vec3<bool>(false, 1754f > exp2(var_1), clamp(var_0, u_input.a.x, 39590u) > 53816u)), Struct_1(~(u_input.a | u_input.a) << ~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 17108u)), any(vec4<bool>(!(global0.x | false), global0.x, global0.x, global0.x | !arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(global0.zz, Struct_1(vec4<u32>(global2[u_input.a.x] - global2[4294967295u], ~4294967295u, ~4294967295u, 68296u)), func_4(vec3<f32>(841f, floor(1000f), -1216f), select(vec3<bool>(global0.x, global0.x, false), !vec3<bool>(true, global0.x, false), func_1(Struct_2(vec2<bool>(global0.x, false), Struct_1(vec4<u32>(global2[global2[0u]], u_input.a.x, 44229u, 31627u)), Struct_1(vec4<u32>(global2[14872u], 0u, 21169u, 69438u)), true), global0.x, vec4<i32>(-23588i, i32(-2147483648), -30190i, -16184i)))), false));
    let var_1 = !func_5(Struct_2(var_0.a, var_0.c, Struct_1(u_input.a), !(true && var_0.a.x))).d;
    let var_2 = countOneBits(-15669i);
    let var_3 = Struct_4(-vec2<i32>(-88266i, 1i & var_2), Struct_3(Struct_2(!(!vec2<bool>(var_0.a.x, var_0.a.x)), Struct_1(vec4<u32>(var_0.b.a.x, 12677u, u_input.a.x, 0u)), func_4(-vec3<f32>(-865f, 295f, global1.x), select(vec3<bool>(false, var_0.a.x, false), vec3<bool>(true, false, false), vec3<bool>(global0.x, global0.x, true))), dot(vec4<i32>(var_2, var_2, 1i, -26258i), vec4<i32>(var_2, var_2, 0i, 2147483647i)) < -2147483647i), vec2<u32>(~abs(var_0.c.a.x), 1u), global0.zz, 1u), 22601i, abs(vec2<u32>(0u ^ 0u, global2[var_0.b.a.x] & 37852u) * ~(global3[4294967295u] % vec2<u32>(global2[15755u], global2[1u]))));
    let var_4 = firstTrailingBit(u_input.a.xxz);
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, ~(-25907i), 19742u, 4294967295u, abs(u_input.a.x));
}

