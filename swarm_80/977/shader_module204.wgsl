struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: array<bool, 20>;

var<private> global2: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec3<u32>(23503u, 8057u, 0u), vec4<u32>(15523u, 0u, 4294967295u, 85416u)), Struct_2(vec3<u32>(83906u, 40412u, 1u), vec4<u32>(0u, 1685u, 9445u, 1u)), Struct_2(vec3<u32>(72099u, 25164u, 31343u), vec4<u32>(40205u, 1401u, 4294967295u, 22994u)), Struct_2(vec3<u32>(53358u, 0u, 0u), vec4<u32>(0u, 6994u, 0u, 4294967295u)), Struct_2(vec3<u32>(1u, 1u, 74740u), vec4<u32>(22919u, 50787u, 11914u, 0u)), Struct_2(vec3<u32>(0u, 1u, 46353u), vec4<u32>(73506u, 58009u, 8398u, 0u)), Struct_2(vec3<u32>(4294967295u, 100233u, 58824u), vec4<u32>(1u, 0u, 1u, 1u)), Struct_2(vec3<u32>(4294967295u, 1u, 63270u), vec4<u32>(1u, 0u, 85932u, 0u)), Struct_2(vec3<u32>(4294967295u, 29312u, 20361u), vec4<u32>(4294967295u, 4199u, 97301u, 0u)), Struct_2(vec3<u32>(0u, 31343u, 0u), vec4<u32>(4294967295u, 50643u, 47305u, 16403u)), Struct_2(vec3<u32>(2979u, 69652u, 4294967295u), vec4<u32>(0u, 70940u, 7898u, 91650u)), Struct_2(vec3<u32>(0u, 12305u, 1u), vec4<u32>(4294967295u, 23115u, 0u, 0u)), Struct_2(vec3<u32>(4294967295u, 0u, 1u), vec4<u32>(0u, 1u, 0u, 11058u)), Struct_2(vec3<u32>(1u, 26362u, 41538u), vec4<u32>(67697u, 4294967295u, 58537u, 26927u)), Struct_2(vec3<u32>(1u, 9555u, 7968u), vec4<u32>(0u, 4294967295u, 18923u, 4294967295u)));

var<private> global3: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec3<u32>(49985u, 49045u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 68843u)), Struct_2(vec3<u32>(77124u, 56302u, 1u), vec4<u32>(31432u, 10886u, 90234u, 18704u)), Struct_2(vec3<u32>(0u, 0u, 0u), vec4<u32>(0u, 33534u, 1u, 4294967295u)), Struct_2(vec3<u32>(23286u, 1786u, 0u), vec4<u32>(20435u, 65969u, 46020u, 4294967295u)), Struct_2(vec3<u32>(36105u, 4294967295u, 4294967295u), vec4<u32>(37544u, 4294967295u, 4294967295u, 44286u)), Struct_2(vec3<u32>(1u, 8496u, 13216u), vec4<u32>(4294967295u, 30932u, 94767u, 13522u)), Struct_2(vec3<u32>(0u, 1u, 3823u), vec4<u32>(22215u, 1u, 0u, 0u)), Struct_2(vec3<u32>(0u, 1u, 1u), vec4<u32>(17138u, 15385u, 4646u, 21371u)), Struct_2(vec3<u32>(4294967295u, 21221u, 10334u), vec4<u32>(1u, 0u, 46228u, 53676u)), Struct_2(vec3<u32>(52685u, 23229u, 29879u), vec4<u32>(63119u, 8831u, 0u, 5969u)), Struct_2(vec3<u32>(4294967295u, 1u, 21835u), vec4<u32>(10680u, 1501u, 4294967295u, 0u)), Struct_2(vec3<u32>(4294967295u, 65294u, 1u), vec4<u32>(9130u, 4294967295u, 89407u, 4294967295u)), Struct_2(vec3<u32>(0u, 7674u, 50471u), vec4<u32>(4294967295u, 38658u, 18784u, 1u)), Struct_2(vec3<u32>(5591u, 1u, 1u), vec4<u32>(0u, 76450u, 4294967295u, 0u)), Struct_2(vec3<u32>(1u, 0u, 0u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u)), Struct_2(vec3<u32>(105078u, 1u, 40109u), vec4<u32>(28501u, 18087u, 4294967295u, 0u)), Struct_2(vec3<u32>(35503u, 1u, 4294967295u), vec4<u32>(0u, 1u, 1u, 8770u)), Struct_2(vec3<u32>(67468u, 0u, 5834u), vec4<u32>(0u, 1u, 4294967295u, 1u)), Struct_2(vec3<u32>(62601u, 0u, 60293u), vec4<u32>(37409u, 45662u, 5010u, 32889u)), Struct_2(vec3<u32>(1u, 4294967295u, 35055u), vec4<u32>(4953u, 69021u, 4294967295u, 0u)), Struct_2(vec3<u32>(15674u, 4294967295u, 1u), vec4<u32>(31299u, 4294967295u, 47531u, 28894u)), Struct_2(vec3<u32>(1u, 4294967295u, 0u), vec4<u32>(12163u, 53183u, 71765u, 48035u)), Struct_2(vec3<u32>(0u, 0u, 30327u), vec4<u32>(0u, 92906u, 0u, 4743u)), Struct_2(vec3<u32>(16233u, 0u, 4294967295u), vec4<u32>(1u, 2482u, 0u, 16182u)), Struct_2(vec3<u32>(21971u, 1u, 152647u), vec4<u32>(4294967295u, 35391u, 21198u, 49358u)), Struct_2(vec3<u32>(1u, 1u, 4294967295u), vec4<u32>(68403u, 4294967295u, 1u, 0u)), Struct_2(vec3<u32>(92796u, 1u, 1u), vec4<u32>(1u, 1u, 52123u, 28185u)), Struct_2(vec3<u32>(8798u, 4294967295u, 1u), vec4<u32>(68998u, 17568u, 4214u, 0u)), Struct_2(vec3<u32>(1u, 7598u, 4294967295u), vec4<u32>(25480u, 4294967295u, 70188u, 18893u)), Struct_2(vec3<u32>(8935u, 4294967295u, 42417u), vec4<u32>(28487u, 1u, 35672u, 93403u)), Struct_2(vec3<u32>(0u, 4294967295u, 65114u), vec4<u32>(1u, 0u, 51809u, 4294967295u)), Struct_2(vec3<u32>(1u, 64074u, 1u), vec4<u32>(37764u, 52500u, 28500u, 0u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec3<i32>, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = -u_input.d.xzz;
    global2 = array<Struct_2, 15>();
    global3 = array<Struct_2, 32>();
    var var_1 = -490f;
    var var_2 = Struct_2(~arg_3, ~firstTrailingBit(reverseBits(vec4<u32>(arg_0, 31090u, 1u, 4294967295u))) ^ vec4<u32>(20636u, u_input.a.x, 15783u, ~arg_3.x));
    return Struct_1(~u_input.a, _wgslsmith_f_op_f32(max(-175f, 1242f)));
}

fn func_1() -> Struct_1 {
    return func_2(0u, u_input.e.x, u_input.d.zyy, ~vec3<u32>(~max(31044u, 1u), 1u, u_input.c.x));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32, arg_3: u32) -> f32 {
    global3 = array<Struct_2, 32>();
    global2 = array<Struct_2, 15>();
    global1 = array<bool, 20>();
    var var_0 = abs(u_input.d);
    var var_1 = func_2(~max(19000u, arg_3), _wgslsmith_mod_u32(~arg_0.a.x | 48744u, ~arg_0.a.x), u_input.d.zxy, _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3, 1u, arg_0.a.x), _wgslsmith_mod_vec3_u32(arg_0.a.zxw, u_input.c), ~u_input.e), select(u_input.c, arg_0.a.xzy, global1[_wgslsmith_index_u32(u_input.a.x ^ u_input.e.x, 20u)])) >> (~vec3<u32>(abs(22170u), func_2(arg_3, 1u, u_input.d.wzy, arg_0.a.zzw).a.x, _wgslsmith_mult_u32(u_input.e.x, arg_0.a.x)) % vec3<u32>(32u)));
    return _wgslsmith_f_op_f32(108f * _wgslsmith_f_op_f32(arg_0.b - var_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 15>();
    let var_0 = Struct_1(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_1(), firstLeadingBit(vec4<i32>(u_input.b, -43613i, 2147483647i, u_input.d.x)), -572f, reverseBits(u_input.e.x)))));
    global2 = array<Struct_2, 15>();
    global0 = array<Struct_2, 29>();
    let var_1 = true;
    var var_2 = var_0;
    var var_3 = 1218f;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.d.x));
}

