struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(0u, 11407u, 40643u), vec3<u32>(35083u, 49037u, 4294967295u), vec3<u32>(23640u, 1u, 18529u));

var<private> global1: Struct_3 = Struct_3(vec4<bool>(false, false, true, true), vec2<bool>(true, true));

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec2<i32>(1i, 25169i), false, 1u, Struct_1(vec2<f32>(168f, -370f), -1i, 25952u, -10245i, vec2<u32>(1u, 0u)), vec4<bool>(false, true, true, true)), Struct_2(vec2<i32>(-55693i, 44116i), true, 1u, Struct_1(vec2<f32>(-744f, 296f), -4895i, 0u, 0i, vec2<u32>(4294967295u, 28131u)), vec4<bool>(false, false, false, false)), Struct_2(vec2<i32>(2147483647i, 0i), true, 33032u, Struct_1(vec2<f32>(1072f, -565f), -54369i, 82636u, 34112i, vec2<u32>(4294967295u, 58987u)), vec4<bool>(false, true, true, false)), Struct_2(vec2<i32>(28306i, 1i), true, 30098u, Struct_1(vec2<f32>(-1012f, -461f), -3105i, 1u, -35003i, vec2<u32>(2944u, 36308u)), vec4<bool>(true, true, false, false)), Struct_2(vec2<i32>(1i, 0i), true, 7956u, Struct_1(vec2<f32>(-357f, -530f), 19830i, 2688u, 21310i, vec2<u32>(9790u, 0u)), vec4<bool>(false, true, true, false)), Struct_2(vec2<i32>(42327i, 1i), true, 50464u, Struct_1(vec2<f32>(1199f, 717f), 21019i, 0u, 0i, vec2<u32>(0u, 75511u)), vec4<bool>(false, true, true, true)), Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), true, 4294967295u, Struct_1(vec2<f32>(-2384f, 179f), 52870i, 271u, 37508i, vec2<u32>(35785u, 4294967295u)), vec4<bool>(true, false, true, true)), Struct_2(vec2<i32>(0i, 2147483647i), true, 41855u, Struct_1(vec2<f32>(-470f, 1000f), -1i, 35194u, 2147483647i, vec2<u32>(34148u, 0u)), vec4<bool>(true, false, false, true)), Struct_2(vec2<i32>(-24093i, 1i), false, 0u, Struct_1(vec2<f32>(908f, 628f), 32457i, 0u, -1i, vec2<u32>(66124u, 32128u)), vec4<bool>(true, true, true, true)), Struct_2(vec2<i32>(0i, 6442i), false, 7103u, Struct_1(vec2<f32>(967f, -267f), -3921i, 0u, 5377i, vec2<u32>(60223u, 4294967295u)), vec4<bool>(false, true, false, false)), Struct_2(vec2<i32>(12873i, -39830i), false, 15115u, Struct_1(vec2<f32>(742f, -296f), 115987i, 55207u, 9551i, vec2<u32>(1u, 26724u)), vec4<bool>(false, false, false, false)), Struct_2(vec2<i32>(1i, 57941i), false, 28051u, Struct_1(vec2<f32>(501f, -869f), -35598i, 26537u, 3292i, vec2<u32>(22905u, 4294967295u)), vec4<bool>(true, false, true, false)), Struct_2(vec2<i32>(-10110i, 29209i), true, 1u, Struct_1(vec2<f32>(812f, 307f), -1i, 4294967295u, 2147483647i, vec2<u32>(15600u, 0u)), vec4<bool>(true, true, true, false)), Struct_2(vec2<i32>(-1i, -32310i), true, 33928u, Struct_1(vec2<f32>(-1421f, -122f), 1i, 16129u, -51802i, vec2<u32>(1u, 4294967295u)), vec4<bool>(false, false, true, true)), Struct_2(vec2<i32>(1i, i32(-2147483648)), false, 12287u, Struct_1(vec2<f32>(-713f, -1841f), 3970i, 4294967295u, 31537i, vec2<u32>(4294967295u, 7437u)), vec4<bool>(false, false, false, false)), Struct_2(vec2<i32>(i32(-2147483648), -1i), true, 15557u, Struct_1(vec2<f32>(-1132f, 1729f), 43351i, 1u, -1i, vec2<u32>(23613u, 12704u)), vec4<bool>(false, false, true, false)), Struct_2(vec2<i32>(2147483647i, 2147483647i), false, 65034u, Struct_1(vec2<f32>(1000f, 1000f), -5202i, 4294967295u, 0i, vec2<u32>(4294967295u, 52553u)), vec4<bool>(true, false, true, true)), Struct_2(vec2<i32>(7888i, 2147483647i), false, 31624u, Struct_1(vec2<f32>(-513f, 1000f), i32(-2147483648), 27197u, 13291i, vec2<u32>(40382u, 0u)), vec4<bool>(false, false, false, false)), Struct_2(vec2<i32>(1i, 2147483647i), false, 55544u, Struct_1(vec2<f32>(1179f, -1000f), -15150i, 4294967295u, -26900i, vec2<u32>(6800u, 4294967295u)), vec4<bool>(false, true, false, true)), Struct_2(vec2<i32>(-1i, 2147483647i), false, 1u, Struct_1(vec2<f32>(290f, -940f), -21137i, 4294967295u, -1i, vec2<u32>(0u, 0u)), vec4<bool>(true, true, true, true)), Struct_2(vec2<i32>(-49937i, -1i), false, 1u, Struct_1(vec2<f32>(-718f, 811f), -1i, 4294967295u, -24371i, vec2<u32>(63756u, 4294967295u)), vec4<bool>(true, false, false, false)), Struct_2(vec2<i32>(25802i, 8316i), false, 4294967295u, Struct_1(vec2<f32>(248f, -819f), -6449i, 4294967295u, 57390i, vec2<u32>(35698u, 0u)), vec4<bool>(true, true, false, false)), Struct_2(vec2<i32>(0i, -31604i), true, 0u, Struct_1(vec2<f32>(779f, -220f), -393i, 5542u, 0i, vec2<u32>(28109u, 35290u)), vec4<bool>(false, true, false, false)), Struct_2(vec2<i32>(1i, 2147483647i), true, 28630u, Struct_1(vec2<f32>(-297f, -1494f), 13991i, 0u, 1i, vec2<u32>(58457u, 4294967295u)), vec4<bool>(true, false, false, true)), Struct_2(vec2<i32>(2147483647i, 43569i), false, 0u, Struct_1(vec2<f32>(-505f, 1042f), 1i, 11435u, 7828i, vec2<u32>(3052u, 4294967295u)), vec4<bool>(true, false, false, true)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: i32) -> bool {
    var var_0 = Struct_3(vec4<bool>(all(global1.a.zwx), all(select(arg_1.zzy, !vec3<bool>(false, false, global1.a.x), all(arg_1.zy))), true == (_wgslsmith_f_op_f32(f32(-1f) * -934f) <= _wgslsmith_f_op_f32(ceil(-781f))), !all(arg_1)), vec2<bool>(!(!arg_1.x != true), arg_1.x));
    var var_1 = 0u;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(634f, -719f)) + vec2<f32>(723f, -858f)) + vec2<f32>(356f, _wgslsmith_f_op_f32(f32(-1f) * -467f)))), arg_3, 53638u, arg_3, countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(16459u, 0u), ~arg_2.zy << (_wgslsmith_clamp_vec2_u32(arg_2.zz, vec2<u32>(arg_0, 27172u), arg_2.xz) % vec2<u32>(32u)))));
    global2 = array<Struct_2, 25>();
    var var_3 = 0i;
    return true;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(426f, -345f)), arg_1.a.x);
    var var_1 = _wgslsmith_add_vec4_u32(~(~(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a) >> (vec4<u32>(85630u, u_input.a, 0u, u_input.a) % vec4<u32>(32u))) >> ((vec4<u32>(32507u, u_input.a, arg_1.e.x, 67862u) & vec4<u32>(u_input.a, u_input.a, 4294967295u, arg_1.c)) % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1.c, u_input.b, arg_1.e.x, 89852u) | vec4<u32>(arg_1.c, arg_1.c, arg_1.e.x, 4294967295u), ~vec4<u32>(4294967295u, arg_1.c, 0u, 21545u)));
    global2 = array<Struct_2, 25>();
    var var_2 = global1.a.x;
    global1 = Struct_3(select(!vec4<bool>(any(global1.b), global1.b.x | true, !global1.a.x, true), select(!select(vec4<bool>(false, false, true, global1.a.x), global1.a, vec4<bool>(true, global1.b.x, false, global1.b.x)), vec4<bool>(true, true, true, true), vec4<bool>(global1.b.x | true, func_3(1u, vec4<bool>(global1.b.x, true, true, global1.a.x), global0[_wgslsmith_index_u32(79466u, 3u)], arg_0), true, true)), all(!(!vec4<bool>(global1.b.x, true, global1.a.x, true)))), !select(vec2<bool>(select(global1.b.x, false, global1.a.x), global1.a.x), select(global1.a.zw, global1.a.zx, global1.a.zy), vec2<bool>(global1.b.x, global1.b.x)));
    return ~reverseBits(reverseBits(-arg_0));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = ~(~(vec4<u32>(1u ^ arg_0.x, _wgslsmith_sub_u32(u_input.a, u_input.a), ~arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 19987u), vec2<u32>(0u, arg_0.x))) | select(~vec4<u32>(u_input.a, arg_0.x, arg_0.x, 0u), vec4<u32>(u_input.b, u_input.a, 4294967295u, 82222u), global1.b.x)));
    let var_1 = select(!vec4<bool>(!(global1.b.x || global1.b.x), !(!global1.a.x), true, firstTrailingBit(1i) >= func_2(0i, Struct_1(vec2<f32>(-1107f, -565f), 2147483647i, arg_0.x, -1i, vec2<u32>(20735u, var_0.x)))), vec4<bool>(true, true, false, false), global1.a.x);
    let var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 926u << (~(~var_0.x) % 32u), ~abs(arg_0.x >> (arg_0.x % 32u))), var_0.yxw);
    var var_3 = global1.a.x;
    let var_4 = -375f;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, var_4), vec2<f32>(var_4, 869f), global1.a.x)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_4, 967f), vec2<f32>(-825f, 186f)))), vec2<f32>(_wgslsmith_f_op_f32(sign(-1350f)), var_4)))), -1i, max(max(~4244u | ~arg_0.x, ~26747u), abs(13686u)), ~(~abs(-2147483647i)), ~firstTrailingBit(vec2<u32>(52812u, 1u) >> (~var_0.zx % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<u32>(~u_input.b, u_input.a, 37340u));
    let var_1 = countOneBits(max(reverseBits(vec4<u32>(43544u, 1u, 1u, 1u)), abs(~vec4<u32>(58114u, var_0.c, 51754u, var_0.c))) | _wgslsmith_sub_vec4_u32(vec4<u32>(select(1u, var_0.e.x, global1.b.x), 1u, reverseBits(66945u), var_0.c), ~(vec4<u32>(var_0.c, u_input.a, u_input.a, 1u) << (vec4<u32>(61878u, 1u, u_input.a, var_0.c) % vec4<u32>(32u)))));
    var var_2 = true;
    let var_3 = var_0.a.x;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(func_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(var_1.x, 0u, var_1.x)), 3u)]).a.x)));
    global2 = array<Struct_2, 25>();
    let var_5 = vec4<u32>(var_1.x, firstLeadingBit(1u), 0u << (_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(var_1.x, 1u, var_1.x, 4294967295u)), var_1) % 32u), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_sub_u32(reverseBits(var_5.x), var_0.e.x) ^ _wgslsmith_dot_vec4_u32(var_1, ~vec4<u32>(10407u, var_1.x, var_5.x, var_1.x))) << (func_1(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(u_input.a, var_5.x, 40152u)), global0[_wgslsmith_index_u32(var_5.x, 3u)] | var_5.zyx)).e.x % 32u));
}

