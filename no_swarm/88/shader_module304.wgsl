struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12>;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<u32>(67443u, 24692u, 19220u), vec4<u32>(104937u, 0u, 3024u, 1u), false, true), Struct_1(vec3<u32>(4294967295u, 34784u, 0u), vec4<u32>(63760u, 4294967295u, 0u, 1u), true, false), Struct_1(vec3<u32>(27498u, 0u, 20180u), vec4<u32>(0u, 4294967295u, 4294967295u, 0u), false, true), Struct_1(vec3<u32>(45860u, 70400u, 47984u), vec4<u32>(0u, 1u, 10948u, 2170u), true, true), Struct_1(vec3<u32>(3909u, 75847u, 4294967295u), vec4<u32>(0u, 0u, 88183u, 35963u), false, true), Struct_1(vec3<u32>(0u, 62374u, 1u), vec4<u32>(1u, 34970u, 1966u, 2u), false, true), Struct_1(vec3<u32>(22485u, 13113u, 19686u), vec4<u32>(76662u, 0u, 15197u, 73449u), false, true), Struct_1(vec3<u32>(44534u, 1u, 70269u), vec4<u32>(0u, 0u, 4294967295u, 0u), false, false), Struct_1(vec3<u32>(55094u, 72920u, 11999u), vec4<u32>(12455u, 22569u, 33116u, 12440u), false, false), Struct_1(vec3<u32>(0u, 2594u, 18782u), vec4<u32>(14960u, 4294967295u, 15548u, 4294967295u), true, false), Struct_1(vec3<u32>(73924u, 33043u, 4294967295u), vec4<u32>(1u, 1u, 39601u, 4294967295u), false, true), Struct_1(vec3<u32>(1u, 51241u, 52822u), vec4<u32>(4294967295u, 17034u, 4294967295u, 0u), false, false), Struct_1(vec3<u32>(1u, 17479u, 47641u), vec4<u32>(0u, 1u, 0u, 44351u), false, true), Struct_1(vec3<u32>(0u, 1u, 4294967295u), vec4<u32>(4294967295u, 77249u, 0u, 1u), false, true), Struct_1(vec3<u32>(84459u, 1u, 83864u), vec4<u32>(17271u, 41103u, 50967u, 45516u), false, true), Struct_1(vec3<u32>(0u, 9431u, 46536u), vec4<u32>(14445u, 4294967295u, 86061u, 0u), true, false), Struct_1(vec3<u32>(36014u, 6030u, 4294967295u), vec4<u32>(33167u, 4294967295u, 0u, 4294967295u), true, true), Struct_1(vec3<u32>(21140u, 16777u, 34u), vec4<u32>(4294967295u, 40193u, 84232u, 16044u), false, true), Struct_1(vec3<u32>(60895u, 0u, 4294967295u), vec4<u32>(4294967295u, 27888u, 22253u, 4294967295u), false, false), Struct_1(vec3<u32>(5636u, 0u, 51002u), vec4<u32>(76729u, 94436u, 21057u, 4294967295u), false, false), Struct_1(vec3<u32>(100952u, 42691u, 13182u), vec4<u32>(0u, 4294967295u, 49867u, 0u), true, true), Struct_1(vec3<u32>(42969u, 22739u, 4294967295u), vec4<u32>(0u, 0u, 0u, 42246u), false, false), Struct_1(vec3<u32>(1u, 42454u, 59187u), vec4<u32>(1u, 10815u, 1u, 4294967295u), true, true), Struct_1(vec3<u32>(0u, 0u, 2632u), vec4<u32>(49925u, 530u, 0u, 4294967295u), true, false), Struct_1(vec3<u32>(70255u, 4294967295u, 30708u), vec4<u32>(1u, 4294967295u, 0u, 13034u), false, false), Struct_1(vec3<u32>(1u, 96257u, 0u), vec4<u32>(30697u, 12213u, 14453u, 19237u), false, true), Struct_1(vec3<u32>(2268u, 23425u, 23002u), vec4<u32>(4294967295u, 50519u, 46475u, 21857u), true, true), Struct_1(vec3<u32>(19219u, 4294967295u, 1u), vec4<u32>(67638u, 37822u, 22763u, 46659u), false, true));

var<private> global2: array<vec4<i32>, 24>;

var<private> global3: vec2<f32> = vec2<f32>(1775f, 1264f);

var<private> global4: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(false, vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u)), Struct_2(true, vec4<u32>(11464u, 64119u, 0u, 0u)), Struct_2(false, vec4<u32>(28816u, 30188u, 0u, 28718u)), Struct_2(false, vec4<u32>(20400u, 44378u, 77714u, 54419u)), Struct_2(true, vec4<u32>(40607u, 0u, 0u, 1020u)), Struct_2(false, vec4<u32>(124062u, 44018u, 1u, 12236u)), Struct_2(true, vec4<u32>(9638u, 61618u, 0u, 60225u)), Struct_2(true, vec4<u32>(0u, 0u, 1u, 0u)), Struct_2(true, vec4<u32>(0u, 2820u, 96305u, 4294967295u)), Struct_2(false, vec4<u32>(83746u, 4294967295u, 34622u, 1u)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 12>();
    let var_0 = global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_div_u32(max(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 77555u), ~u_input.a), 11866u), 10u)];
    var var_1 = _wgslsmith_mult_vec3_u32(var_0.b.zwz, u_input.c.yyy);
    let var_2 = false;
    global2 = array<vec4<i32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-519f, global3.x, 981f, 1239f) + vec4<f32>(global3.x, -642f, -1761f, global3.x)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.x, 489f, global3.x, 1169f), vec4<f32>(331f, global3.x, 895f, 2308f)))), vec4<f32>(global3.x, global3.x, _wgslsmith_f_op_f32(step(-299f, -1776f)), _wgslsmith_f_op_f32(global3.x * -1442f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(283f, 108f, global3.x, -1628f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -1000f, global3.x, 395f) + vec4<f32>(-599f, global3.x, 1000f, global3.x))))));
}

