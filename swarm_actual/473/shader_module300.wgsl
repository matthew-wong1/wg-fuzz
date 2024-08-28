// {"0:0":[249,148,235,86]}
// Seed: 6707939183679470160

struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true));

var<private> global1: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(1u, 1u, 4294967295u, 24311u), vec4<u32>(4294967295u, 4294967295u, 19232u, 0u), vec4<u32>(17731u, 19936u, 13565u, 1u), vec4<u32>(66308u, 0u, 43736u, 1u), vec4<u32>(31904u, 61646u, 1u, 4294967295u), vec4<u32>(85100u, 4294967295u, 41529u, 4294967295u), vec4<u32>(68249u, 63406u, 0u, 1u), vec4<u32>(5666u, 1u, 46137u, 0u), vec4<u32>(0u, 22441u, 4294967295u, 39019u), vec4<u32>(0u, 0u, 7805u, 8333u), vec4<u32>(22152u, 0u, 77472u, 1u), vec4<u32>(53099u, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, 13980u, 15318u, 54531u), vec4<u32>(44101u, 25723u, 30087u, 65581u), vec4<u32>(6178u, 9320u, 0u, 60409u), vec4<u32>(7290u, 1u, 34575u, 20911u), vec4<u32>(4294967295u, 76465u, 18008u, 19144u), vec4<u32>(4270u, 0u, 11469u, 17375u), vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(1u, 92439u, 4286u, 1u), vec4<u32>(1u, 9809u, 4479u, 4294967295u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<u32>(70374u, 0u, 6264u, 29635u), vec4<u32>(1u, 14180u, 0u, 33998u), vec4<u32>(47614u, 4294967295u, 0u, 14378u), vec4<u32>(37414u, 4294967295u, 82016u, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, 55670u), vec4<u32>(1u, 1u, 1u, 58553u));

var<private> global2: array<vec2<bool>, 27>;

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = vec4<f32>(floor(-(-(-117f)) * max(-(-3448f), sign(539f))), trunc(-trunc(-164f) * max(-584f, -(-808f))), -(ceil(-(-615f)) / abs(-1922f + -1000f)), round(-(-779f * 2004f) + select(min(1223f, 320f), -1292f * -1903f, !arg_0.a)));
    var var_1 = Struct_1(~(~firstLeadingBit(abs(global1[20623u]))), firstTrailingBit(min(u_input.a, max(u_input.a, clamp(i32(-2147483648), i32(-2147483648), 2147483647i)))));
    var var_2 = -1936f - -(-352f);
    var var_3 = -var_0.x;
    let var_4 = arg_0;
    return min(~global1[0u], (~(~vec4<u32>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)) >> select(vec4<u32>(0u, var_1.a.x, 66627u, var_1.a.x) / global1[634u], vec4<u32>(var_1.a.x, 1u, var_1.a.x, 1u), !true)) / select(vec4<u32>(0u, var_1.a.x, 4294967295u + 1u, 1u), global1[0u & var_1.a.x] >> (vec4<u32>(52436u, var_1.a.x, 1u, var_1.a.x) >> vec4<u32>(var_1.a.x, var_1.a.x, var_1.a.x, 33511u)), all(vec4<bool>(true, true, true, var_4.a))));
}

fn func_2(arg_0: vec4<bool>) -> vec3<i32> {
    var var_0 = Struct_2(false);
    var_0 = Struct_2(!false);
    var_0 = Struct_2(!true);
    let var_1 = select(vec4<u32>(~38065u, 0u, max(firstLeadingBit(1u), 0u) >> ((0u - 9401u) / ~1u), 40265u), ~func_3(Struct_2(!var_0.a)), select(!select(!vec4<bool>(var_0.a, false, var_0.a, arg_0.x), select(arg_0, vec4<bool>(true, true, arg_0.x, arg_0.x), var_0.a), vec4<bool>(true, var_0.a, true, var_0.a)), select(arg_0, vec4<bool>(var_0.a, arg_0.x || var_0.a, var_0.a, var_0.a), all(arg_0)), select(select(vec4<bool>(var_0.a, var_0.a, false, arg_0.x), select(vec4<bool>(false, arg_0.x, var_0.a, var_0.a), arg_0, false), true), arg_0, var_0.a)));
    let var_2 = vec4<i32>(abs(u_input.a) + ((-u_input.a + u_input.a) & ~select(u_input.a, -15772i, false)), u_input.a + u_input.a, u_input.a, -u_input.a | dot(~(-vec2<i32>(-20267i, 0i)), clamp(-vec2<i32>(u_input.a, 2147483647i), ~vec2<i32>(u_input.a, u_input.a), vec2<i32>(-26398i, 0i) << vec2<u32>(var_1.x, 44215u))));
    return -(-(-vec3<i32>(~2147483647i, -1i, u_input.a)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    global1 = array<vec4<u32>, 28>();
    let var_0 = clamp(u_input.a, firstTrailingBit(-19393i), ~(~func_2(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false)).x));
    global2 = array<vec2<bool>, 27>();
    let var_1 = 39034i;
    global0 = array<vec3<bool>, 11>();
    return Struct_1(vec4<u32>(arg_1.a.x, ~(~arg_1.a.x), arg_1.a.x, arg_1.a.x), reverseBits(var_1));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> bool {
    let var_0 = Struct_2(arg_1.a);
    global0 = array<vec3<bool>, 11>();
    var var_1 = global2[min(~(dot(vec3<u32>(47021u, 4294967295u, 47299u) + vec3<u32>(4294967295u, 96836u, 4323u), vec3<u32>(1u, 64153u, 777u) & vec3<u32>(8463u, 4294967295u, 44935u)) % (max(1u, 1u) << min(4294967295u, 61925u))), (54880u % dot(select(vec3<u32>(2033u, 36162u, 1u), vec3<u32>(4294967295u, 10801u, 100526u), var_0.a), vec3<u32>(50558u, 1u, 4294967295u))) & (1u * ~(9258u / 4294967295u)))];
    var var_2 = func_4(func_2(vec4<bool>(true, var_0.a, !(false && true), true)), Struct_1(select(vec4<u32>(~0u, 0u, ~70321u, 4294967295u >> 0u), ~(~global1[21377u]), !(0u >= 21946u)), 1i));
    var var_3 = ~(-1i);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 28>();
    global2 = array<vec2<bool>, 27>();
    var var_0 = vec2<i32>(1i, u_input.a);
    var var_1 = reverseBits(u_input.a);
    let var_2 = select(select(!vec4<bool>(func_1(vec2<i32>(-3670i, u_input.a), Struct_2(true)), !true, false || true, !false), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false))), select(select(vec4<bool>(true, true, true, true), !vec4<bool>(false, false, false, false), select(true, false, false)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), true)), func_1(firstLeadingBit(vec2<i32>(-22539i, -21785i)), Struct_2(true)))), vec4<bool>(reverseBits(dot(vec2<i32>(u_input.a, u_input.a), vec2<i32>(27022i, -40016i))) != var_0.x, u_input.a <= abs(~u_input.a), !false, (select(true, false, false) || all(vec4<bool>(true, true, false, false))) || ((true || false) | (false | true))), true);
    var_1 = ~(-(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~4294967295u, 3654u | 4294967295u, min(firstTrailingBit(func_4(vec3<i32>(1i, var_0.x, u_input.a), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 84399u), u_input.a)).a.x), ~32960u ^ reverseBits(4294967295u))), (-(-vec2<i32>(u_input.a, i32(-2147483648))) << ~(vec2<u32>(17946u, 4294967295u) ^ vec2<u32>(0u, 462u))) & abs(~select(vec2<i32>(var_0.x, -1i), vec2<i32>(u_input.a, var_0.x), vec2<bool>(false, var_2.x))));
}

