struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 1>;

var<private> global1: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_2(4294967295u, 52909u, vec3<u32>(1726u, 4294967295u, 1588u), Struct_1(vec3<bool>(false, false, true), 59396i, vec4<u32>(18870u, 0u, 3039u, 1u)), -14471i)), Struct_3(Struct_2(0u, 41013u, vec3<u32>(20921u, 19786u, 24221u), Struct_1(vec3<bool>(false, false, true), -28173i, vec4<u32>(4294967295u, 0u, 0u, 29028u)), 0i)), Struct_3(Struct_2(45887u, 1u, vec3<u32>(45711u, 12712u, 65251u), Struct_1(vec3<bool>(false, false, true), -29516i, vec4<u32>(0u, 9708u, 76375u, 44885u)), -21085i)), Struct_3(Struct_2(4294967295u, 45580u, vec3<u32>(1995u, 1u, 0u), Struct_1(vec3<bool>(true, true, true), 2147483647i, vec4<u32>(23954u, 6796u, 38384u, 1u)), -1i)), Struct_3(Struct_2(1u, 30248u, vec3<u32>(50175u, 0u, 76539u), Struct_1(vec3<bool>(false, true, false), 0i, vec4<u32>(4294967295u, 4294967295u, 12937u, 60839u)), 0i)), Struct_3(Struct_2(7520u, 93619u, vec3<u32>(60205u, 15999u, 44467u), Struct_1(vec3<bool>(false, false, false), 8533i, vec4<u32>(0u, 4294967295u, 48724u, 1185u)), 11138i)), Struct_3(Struct_2(0u, 20725u, vec3<u32>(0u, 0u, 69380u), Struct_1(vec3<bool>(false, true, false), -24703i, vec4<u32>(4294967295u, 27687u, 0u, 0u)), 2147483647i)), Struct_3(Struct_2(353u, 4164u, vec3<u32>(15694u, 31828u, 4294967295u), Struct_1(vec3<bool>(true, false, false), 0i, vec4<u32>(1u, 4294967295u, 5328u, 4294967295u)), 2147483647i)), Struct_3(Struct_2(96598u, 137826u, vec3<u32>(1u, 4294967295u, 43944u), Struct_1(vec3<bool>(false, false, true), 2147483647i, vec4<u32>(41855u, 40222u, 4294967295u, 2983u)), 8500i)), Struct_3(Struct_2(1u, 1u, vec3<u32>(0u, 81975u, 34935u), Struct_1(vec3<bool>(true, true, false), -14186i, vec4<u32>(0u, 4294967295u, 4294967295u, 4148u)), -56582i)), Struct_3(Struct_2(32780u, 29965u, vec3<u32>(13618u, 1u, 4294967295u), Struct_1(vec3<bool>(false, false, true), i32(-2147483648), vec4<u32>(88058u, 0u, 1u, 0u)), -21571i)), Struct_3(Struct_2(23032u, 4294967295u, vec3<u32>(4294967295u, 0u, 0u), Struct_1(vec3<bool>(false, true, false), -1i, vec4<u32>(13989u, 4294967295u, 29095u, 4294967295u)), -1i)), Struct_3(Struct_2(1u, 22323u, vec3<u32>(0u, 17498u, 72802u), Struct_1(vec3<bool>(true, false, false), -24071i, vec4<u32>(4294967295u, 1u, 116879u, 14333u)), -30577i)), Struct_3(Struct_2(86018u, 4294967295u, vec3<u32>(4294967295u, 4294967295u, 11980u), Struct_1(vec3<bool>(false, true, false), 2147483647i, vec4<u32>(62816u, 1u, 18261u, 1u)), -1i)), Struct_3(Struct_2(0u, 14087u, vec3<u32>(4294967295u, 35916u, 66314u), Struct_1(vec3<bool>(false, false, false), 2147483647i, vec4<u32>(30763u, 44039u, 1u, 1u)), 1i)), Struct_3(Struct_2(0u, 0u, vec3<u32>(1216u, 18678u, 0u), Struct_1(vec3<bool>(true, false, false), -14340i, vec4<u32>(4294967295u, 1u, 4294967295u, 1u)), 56369i)), Struct_3(Struct_2(0u, 4294967295u, vec3<u32>(14660u, 0u, 0u), Struct_1(vec3<bool>(true, false, true), 47994i, vec4<u32>(1u, 53171u, 4294967295u, 4294967295u)), -9797i)), Struct_3(Struct_2(0u, 99677u, vec3<u32>(27266u, 4294967295u, 8663u), Struct_1(vec3<bool>(false, false, true), 2147483647i, vec4<u32>(4294967295u, 75711u, 4294967295u, 12890u)), -21722i)), Struct_3(Struct_2(0u, 48554u, vec3<u32>(25019u, 4294967295u, 1u), Struct_1(vec3<bool>(true, false, false), 69853i, vec4<u32>(19251u, 523u, 21946u, 22370u)), 2147483647i)), Struct_3(Struct_2(4294967295u, 4294967295u, vec3<u32>(4294967295u, 1u, 49678u), Struct_1(vec3<bool>(false, false, false), 0i, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 2156u)), 5127i)));

var<private> global2: array<vec3<u32>, 8>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> vec3<u32> {
    let var_0 = 1u;
    var var_1 = Struct_3(Struct_2(var_0, ~1u, global2[_wgslsmith_index_u32(var_0, 8u)], Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), u_input.a.x, ~(vec4<u32>(var_0, var_0, var_0, 19730u) << (vec4<u32>(var_0, var_0, var_0, var_0) % vec4<u32>(32u)))), u_input.b));
    let var_2 = abs(-_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_1.a.d.b, _wgslsmith_sub_i32(var_1.a.e, 0i), 1i), ~_wgslsmith_sub_i32(-40664i, 19283i), var_1.a.d.b));
    global2 = array<vec3<u32>, 8>();
    global0 = array<vec2<bool>, 1>();
    return ~vec3<u32>(var_1.a.c.x, 4294967295u, (95244u & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, var_0, 1u), var_1.a.d.c)) ^ var_0);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec2<bool>) -> i32 {
    global0 = array<vec2<bool>, 1>();
    global1 = array<Struct_3, 20>();
    var var_0 = all(arg_0.d.a.xx);
    let var_1 = _wgslsmith_sub_u32(firstTrailingBit(arg_0.c.x), arg_0.a);
    var var_2 = arg_0;
    return ~(-1i) ^ _wgslsmith_div_i32(select(firstTrailingBit(-1i), i32(-1i) * -arg_0.d.b, true), min(var_2.d.b, _wgslsmith_add_i32(arg_1.b, -2147483647i)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = -firstLeadingBit(func_3(Struct_2(~17910u, ~4294967295u, func_2(), arg_0.a.d, ~arg_3.d.b), Struct_1(vec3<bool>(arg_1.a.d.a.x, arg_2.d.a.x, false), _wgslsmith_sub_i32(arg_3.d.b, arg_3.e), _wgslsmith_mult_vec4_u32(arg_3.d.c, vec4<u32>(arg_1.a.a, arg_1.a.b, arg_0.a.b, arg_3.a))), ~arg_3.d.c.yz, vec2<bool>(arg_1.a.d.a.x, false)));
    var var_1 = arg_1;
    global2 = array<vec3<u32>, 8>();
    var var_2 = Struct_1(!arg_1.a.d.a, ~(~func_3(arg_0.a, arg_1.a.d, vec2<u32>(21556u, var_1.a.d.c.x), select(arg_2.d.a.zx, arg_0.a.d.a.yz, arg_2.d.a.x))), abs(countOneBits(max(arg_2.d.c | vec4<u32>(arg_1.a.c.x, 37189u, 11433u, arg_1.a.d.c.x), _wgslsmith_sub_vec4_u32(vec4<u32>(3026u, 44893u, 4294967295u, arg_0.a.c.x), var_1.a.d.c)))));
    var var_3 = arg_0;
    return reverseBits(~reverseBits(arg_1.a.b << (abs(var_3.a.c.x) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_div_u32(1u, 1u), _wgslsmith_add_u32(~(~1u), ~abs(1u)), select(10424u, firstTrailingBit(1u), true), _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(4964u, 55212u)), vec2<u32>(func_1(global1[_wgslsmith_index_u32(1u, 20u)], Struct_3(Struct_2(23859u, 0u, vec3<u32>(14389u, 0u, 1u), Struct_1(vec3<bool>(true, true, false), u_input.a.x, vec4<u32>(2581u, 25662u, 1u, 0u)), u_input.b)), Struct_2(54516u, 35997u, vec3<u32>(0u, 1u, 1u), Struct_1(vec3<bool>(true, true, true), -2147483647i, vec4<u32>(76036u, 319u, 0u, 4294967295u)), 2147483647i), Struct_2(42542u, 4294967295u, vec3<u32>(73246u, 1u, 0u), Struct_1(vec3<bool>(true, true, false), 0i, vec4<u32>(21581u, 66706u, 13503u, 8373u)), 8541i)), ~4294967295u))), _wgslsmith_add_u32(~select(~4294967295u, _wgslsmith_mod_u32(0u, 25520u), true), reverseBits(~1u)), _wgslsmith_mult_u32(1u, 4294967295u), 453f);
}

