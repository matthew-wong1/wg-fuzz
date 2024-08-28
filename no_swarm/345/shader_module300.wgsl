struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: vec4<bool>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
    c: Struct_4,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 22> = array<Struct_5, 22>(Struct_5(vec2<u32>(1u, 3544u), Struct_4(vec4<i32>(2147483647i, 3492i, -2198i, 20466i), 24963u, vec4<bool>(true, false, true, false), 581i, vec3<u32>(1u, 1u, 51607u)), Struct_4(vec4<i32>(-1i, -1i, 0i, 1i), 4294967295u, vec4<bool>(true, false, true, true), -9547i, vec3<u32>(51366u, 1u, 4294967295u)), vec3<u32>(4294967295u, 31127u, 33340u)), Struct_5(vec2<u32>(99104u, 90296u), Struct_4(vec4<i32>(0i, -1i, 9769i, -31074i), 8883u, vec4<bool>(false, true, false, false), 14390i, vec3<u32>(58696u, 47861u, 0u)), Struct_4(vec4<i32>(i32(-2147483648), 19688i, 20421i, 0i), 0u, vec4<bool>(false, true, true, true), 92813i, vec3<u32>(4294967295u, 49437u, 0u)), vec3<u32>(35495u, 83055u, 15204u)), Struct_5(vec2<u32>(24671u, 36939u), Struct_4(vec4<i32>(-1i, -1i, 2147483647i, i32(-2147483648)), 4294967295u, vec4<bool>(false, true, false, true), -45895i, vec3<u32>(24251u, 0u, 4294967295u)), Struct_4(vec4<i32>(-1i, 14790i, -25779i, 48770i), 113134u, vec4<bool>(true, true, true, true), 29297i, vec3<u32>(4294967295u, 6140u, 29371u)), vec3<u32>(0u, 87250u, 1u)), Struct_5(vec2<u32>(0u, 10918u), Struct_4(vec4<i32>(-1i, -15958i, 52220i, 19212i), 16821u, vec4<bool>(true, true, true, true), 40567i, vec3<u32>(0u, 19471u, 0u)), Struct_4(vec4<i32>(-15007i, 0i, -23010i, -1i), 80099u, vec4<bool>(false, false, true, false), i32(-2147483648), vec3<u32>(1u, 1u, 9674u)), vec3<u32>(31235u, 4294967295u, 20057u)), Struct_5(vec2<u32>(85479u, 1u), Struct_4(vec4<i32>(i32(-2147483648), 9653i, 1i, -78610i), 4294967295u, vec4<bool>(true, false, false, true), -16i, vec3<u32>(1u, 53785u, 4294967295u)), Struct_4(vec4<i32>(30864i, 1i, 1i, 25998i), 23057u, vec4<bool>(true, false, true, true), 1i, vec3<u32>(4035u, 21279u, 1u)), vec3<u32>(0u, 12985u, 0u)), Struct_5(vec2<u32>(4294967295u, 1u), Struct_4(vec4<i32>(-4753i, 83420i, 2147483647i, i32(-2147483648)), 78980u, vec4<bool>(true, false, true, true), 0i, vec3<u32>(1u, 4294967295u, 1u)), Struct_4(vec4<i32>(-3752i, -13097i, -7850i, 14066i), 1u, vec4<bool>(true, true, false, false), 26027i, vec3<u32>(14512u, 95585u, 4294967295u)), vec3<u32>(0u, 1u, 1u)), Struct_5(vec2<u32>(4294967295u, 52771u), Struct_4(vec4<i32>(10311i, -30434i, 26177i, 1i), 13589u, vec4<bool>(false, false, false, true), -1i, vec3<u32>(0u, 51698u, 51727u)), Struct_4(vec4<i32>(0i, 2147483647i, 1i, 2147483647i), 62113u, vec4<bool>(true, true, true, false), i32(-2147483648), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), vec3<u32>(22423u, 2570u, 4294967295u)), Struct_5(vec2<u32>(0u, 1u), Struct_4(vec4<i32>(-6261i, -13693i, -1i, -1i), 392u, vec4<bool>(true, false, false, true), 2122i, vec3<u32>(1u, 27325u, 4294967295u)), Struct_4(vec4<i32>(1i, 1378i, 30080i, -36283i), 1049u, vec4<bool>(false, false, true, false), 31830i, vec3<u32>(169100u, 1u, 16439u)), vec3<u32>(18854u, 0u, 57514u)), Struct_5(vec2<u32>(30005u, 258u), Struct_4(vec4<i32>(15183i, -4407i, -11900i, -50709i), 69543u, vec4<bool>(true, false, true, true), 1i, vec3<u32>(9385u, 8251u, 0u)), Struct_4(vec4<i32>(-58098i, -1i, 2147483647i, 12091i), 1u, vec4<bool>(false, true, true, true), -79746i, vec3<u32>(12187u, 46314u, 33801u)), vec3<u32>(1u, 27527u, 88980u)), Struct_5(vec2<u32>(82356u, 2008u), Struct_4(vec4<i32>(-64185i, 0i, 15069i, -17176i), 10991u, vec4<bool>(false, false, true, true), -1i, vec3<u32>(42127u, 27298u, 0u)), Struct_4(vec4<i32>(2147483647i, 2147483647i, 0i, -12385i), 63161u, vec4<bool>(true, true, true, true), 190i, vec3<u32>(35247u, 1u, 75178u)), vec3<u32>(22301u, 86753u, 0u)), Struct_5(vec2<u32>(76994u, 29348u), Struct_4(vec4<i32>(7529i, i32(-2147483648), 20737i, 1i), 35010u, vec4<bool>(false, false, true, true), 49957i, vec3<u32>(4294967295u, 47830u, 140034u)), Struct_4(vec4<i32>(59640i, -18992i, 50841i, -1i), 49200u, vec4<bool>(false, true, false, false), -23133i, vec3<u32>(1u, 87205u, 47128u)), vec3<u32>(1u, 4294967295u, 1u)), Struct_5(vec2<u32>(4294967295u, 0u), Struct_4(vec4<i32>(-37572i, 1i, 0i, 1i), 1u, vec4<bool>(true, false, false, true), 71109i, vec3<u32>(18476u, 40579u, 40385u)), Struct_4(vec4<i32>(12791i, 0i, i32(-2147483648), 2147483647i), 4294967295u, vec4<bool>(true, false, true, true), 1i, vec3<u32>(46877u, 66828u, 27286u)), vec3<u32>(20580u, 4294967295u, 14595u)), Struct_5(vec2<u32>(89405u, 4294967295u), Struct_4(vec4<i32>(-14330i, 2147483647i, 6599i, 0i), 19008u, vec4<bool>(true, false, false, true), -12219i, vec3<u32>(49971u, 4294967295u, 63695u)), Struct_4(vec4<i32>(510i, -1i, -41004i, -22450i), 50303u, vec4<bool>(true, false, false, true), -14774i, vec3<u32>(2210u, 46988u, 34934u)), vec3<u32>(18572u, 1u, 4294967295u)), Struct_5(vec2<u32>(0u, 1u), Struct_4(vec4<i32>(-19128i, 19139i, 9018i, 29799i), 4294967295u, vec4<bool>(false, true, true, true), 0i, vec3<u32>(1u, 1u, 1u)), Struct_4(vec4<i32>(-1i, 0i, 34920i, -32869i), 0u, vec4<bool>(false, true, false, false), 1i, vec3<u32>(39030u, 1u, 0u)), vec3<u32>(101150u, 160134u, 0u)), Struct_5(vec2<u32>(0u, 1u), Struct_4(vec4<i32>(-4031i, 0i, -14066i, 5300i), 26430u, vec4<bool>(false, false, true, false), 0i, vec3<u32>(1u, 32135u, 1u)), Struct_4(vec4<i32>(11767i, 0i, -1i, -1i), 0u, vec4<bool>(true, true, false, true), -11998i, vec3<u32>(37968u, 1u, 89745u)), vec3<u32>(4294967295u, 0u, 28254u)), Struct_5(vec2<u32>(0u, 1u), Struct_4(vec4<i32>(0i, 1i, -47538i, -3161i), 4294967295u, vec4<bool>(false, false, true, true), -5571i, vec3<u32>(1u, 10155u, 4294967295u)), Struct_4(vec4<i32>(11451i, 0i, i32(-2147483648), -46725i), 32539u, vec4<bool>(false, true, true, false), 1i, vec3<u32>(4294967295u, 40446u, 51724u)), vec3<u32>(4294967295u, 36210u, 1238u)), Struct_5(vec2<u32>(1u, 1u), Struct_4(vec4<i32>(30923i, -6847i, -18480i, 43734i), 4294967295u, vec4<bool>(false, false, true, true), 1i, vec3<u32>(115389u, 36995u, 2826u)), Struct_4(vec4<i32>(-16718i, 1i, 16813i, 24742i), 41167u, vec4<bool>(true, true, false, false), 41220i, vec3<u32>(56884u, 20348u, 79969u)), vec3<u32>(1u, 0u, 4294967295u)), Struct_5(vec2<u32>(26672u, 14335u), Struct_4(vec4<i32>(19271i, 13351i, 114i, 1i), 24905u, vec4<bool>(true, false, true, false), 9438i, vec3<u32>(0u, 12495u, 0u)), Struct_4(vec4<i32>(-33210i, i32(-2147483648), 11726i, 0i), 0u, vec4<bool>(true, false, true, false), -18829i, vec3<u32>(1u, 1u, 4294967295u)), vec3<u32>(31713u, 84876u, 19602u)), Struct_5(vec2<u32>(52426u, 1u), Struct_4(vec4<i32>(1i, -30566i, 1i, 2147483647i), 44158u, vec4<bool>(false, true, false, true), i32(-2147483648), vec3<u32>(49907u, 24585u, 46160u)), Struct_4(vec4<i32>(-1i, 0i, -59497i, 0i), 0u, vec4<bool>(false, true, false, true), 3118i, vec3<u32>(4294967295u, 35323u, 4294967295u)), vec3<u32>(1u, 63814u, 31275u)), Struct_5(vec2<u32>(4294967295u, 0u), Struct_4(vec4<i32>(-61616i, -4315i, -42946i, 27538i), 22660u, vec4<bool>(true, true, false, false), -24460i, vec3<u32>(3904u, 1u, 4759u)), Struct_4(vec4<i32>(-12168i, i32(-2147483648), 0i, -30453i), 4294967295u, vec4<bool>(true, true, false, false), -13729i, vec3<u32>(0u, 30974u, 1u)), vec3<u32>(32163u, 112817u, 1u)), Struct_5(vec2<u32>(1u, 0u), Struct_4(vec4<i32>(1i, -1i, i32(-2147483648), -41266i), 0u, vec4<bool>(false, false, false, false), 55061i, vec3<u32>(2441u, 2746u, 0u)), Struct_4(vec4<i32>(-40230i, -1i, -19709i, 0i), 10545u, vec4<bool>(true, true, true, false), 2147483647i, vec3<u32>(67211u, 52607u, 0u)), vec3<u32>(66293u, 60994u, 4294967295u)), Struct_5(vec2<u32>(4294967295u, 0u), Struct_4(vec4<i32>(0i, 1i, -46802i, 0i), 0u, vec4<bool>(true, true, false, true), 1i, vec3<u32>(21551u, 33539u, 0u)), Struct_4(vec4<i32>(-27344i, 1i, i32(-2147483648), 0i), 4294967295u, vec4<bool>(false, false, true, true), 12388i, vec3<u32>(4294967295u, 4294967295u, 20491u)), vec3<u32>(0u, 34001u, 4294967295u)));

var<private> global1: array<vec3<u32>, 26>;

var<private> global2: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false));

var<private> global3: array<i32, 8> = array<i32, 8>(-10501i, 1i, 45281i, 6805i, -17429i, 2147483647i, -8865i, 2147483647i);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false && (all(global2[_wgslsmith_index_u32(abs(1u), 11u)]) & true);
    let var_1 = _wgslsmith_sub_u32(4743u, u_input.c) <= u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(u_input.d, _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d.x, u_input.c, u_input.c, u_input.d.x), vec4<u32>(31298u, 24274u, 0u, u_input.d.x)) >> (abs(reverseBits(u_input.d)) % vec4<u32>(32u))), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(firstTrailingBit(u_input.a.zx), u_input.a.zz), vec2<i32>(23700i, u_input.a.x) >> (u_input.d.zz % vec2<u32>(32u)), vec2<i32>(-global3[_wgslsmith_index_u32(22836u, 8u)], 16754i)), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(-27391i, 1i), u_input.a.yx), ~u_input.a.xy)), u_input.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(906f - 1735f)), 327f)), _wgslsmith_f_op_f32(-473f - 1056f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-794f, 246f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-355f))))), u_input.b);
}

