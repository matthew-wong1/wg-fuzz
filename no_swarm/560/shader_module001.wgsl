struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(Struct_2(Struct_1(false, vec4<u32>(36719u, 5605u, 55410u, 0u), 7732u), true, Struct_1(true, vec4<u32>(29369u, 4294967295u, 1u, 4294967295u), 1u), Struct_1(false, vec4<u32>(48641u, 25925u, 0u, 41852u), 26324u), 5978u)), Struct_4(Struct_2(Struct_1(false, vec4<u32>(36353u, 0u, 4294967295u, 21093u), 4294967295u), true, Struct_1(false, vec4<u32>(0u, 81746u, 38835u, 1u), 1570u), Struct_1(false, vec4<u32>(4050u, 1u, 1u, 42719u), 37870u), 4294967295u)), Struct_4(Struct_2(Struct_1(true, vec4<u32>(77782u, 1u, 1u, 49849u), 0u), false, Struct_1(false, vec4<u32>(56u, 1u, 4294967295u, 870u), 4294967295u), Struct_1(false, vec4<u32>(44023u, 20670u, 35729u, 1u), 17498u), 1u)), Struct_4(Struct_2(Struct_1(false, vec4<u32>(23374u, 47090u, 4294967295u, 1u), 1u), false, Struct_1(false, vec4<u32>(0u, 1u, 5390u, 0u), 21628u), Struct_1(true, vec4<u32>(44221u, 56667u, 1u, 36635u), 1u), 79256u)), Struct_4(Struct_2(Struct_1(true, vec4<u32>(1u, 0u, 0u, 0u), 65741u), true, Struct_1(false, vec4<u32>(4294967295u, 30560u, 0u, 0u), 22732u), Struct_1(false, vec4<u32>(1u, 2448u, 4294967295u, 4294967295u), 33114u), 65969u)), Struct_4(Struct_2(Struct_1(true, vec4<u32>(4294967295u, 21412u, 1u, 54675u), 4294967295u), true, Struct_1(true, vec4<u32>(1u, 64212u, 1u, 2545u), 1u), Struct_1(false, vec4<u32>(4294967295u, 0u, 1u, 2732u), 4566u), 55040u)), Struct_4(Struct_2(Struct_1(true, vec4<u32>(61864u, 0u, 73941u, 0u), 51480u), true, Struct_1(false, vec4<u32>(47320u, 60552u, 1u, 4294967295u), 1u), Struct_1(false, vec4<u32>(1u, 56989u, 4294967295u, 1u), 31767u), 4294967295u)), Struct_4(Struct_2(Struct_1(false, vec4<u32>(4294967295u, 0u, 32360u, 1u), 53148u), true, Struct_1(false, vec4<u32>(63574u, 447u, 20953u, 4294967295u), 1u), Struct_1(true, vec4<u32>(1u, 31522u, 19485u, 43939u), 33640u), 6833u)), Struct_4(Struct_2(Struct_1(false, vec4<u32>(58095u, 1103u, 32348u, 120594u), 1u), true, Struct_1(false, vec4<u32>(1u, 16069u, 1u, 57349u), 1u), Struct_1(false, vec4<u32>(0u, 4294967295u, 1u, 0u), 25747u), 1u)), Struct_4(Struct_2(Struct_1(false, vec4<u32>(1u, 4294967295u, 32444u, 0u), 34214u), false, Struct_1(false, vec4<u32>(78430u, 1u, 0u, 51852u), 1u), Struct_1(false, vec4<u32>(1u, 0u, 8068u, 28841u), 72439u), 287u)), Struct_4(Struct_2(Struct_1(true, vec4<u32>(1u, 5135u, 4294967295u, 30491u), 72565u), false, Struct_1(true, vec4<u32>(0u, 4294967295u, 1u, 1u), 71104u), Struct_1(true, vec4<u32>(1u, 45314u, 4294967295u, 39002u), 1u), 6664u)), Struct_4(Struct_2(Struct_1(true, vec4<u32>(1u, 4294967295u, 16204u, 46734u), 1u), false, Struct_1(true, vec4<u32>(35843u, 1u, 0u, 1u), 1u), Struct_1(true, vec4<u32>(86441u, 54174u, 0u, 0u), 11199u), 0u)), Struct_4(Struct_2(Struct_1(false, vec4<u32>(5458u, 4294967295u, 4823u, 29892u), 1u), true, Struct_1(false, vec4<u32>(1u, 0u, 64205u, 8287u), 19510u), Struct_1(false, vec4<u32>(4294967295u, 4294967295u, 0u, 1u), 0u), 4294967295u)), Struct_4(Struct_2(Struct_1(false, vec4<u32>(41311u, 4294967295u, 0u, 12259u), 0u), false, Struct_1(true, vec4<u32>(0u, 10896u, 1u, 1u), 46531u), Struct_1(true, vec4<u32>(0u, 0u, 1u, 1u), 38837u), 1u)), Struct_4(Struct_2(Struct_1(true, vec4<u32>(5315u, 40682u, 42615u, 67747u), 70718u), true, Struct_1(false, vec4<u32>(13189u, 4294967295u, 0u, 1u), 65371u), Struct_1(true, vec4<u32>(31847u, 4294967295u, 2136u, 74360u), 0u), 7227u)), Struct_4(Struct_2(Struct_1(true, vec4<u32>(39185u, 1u, 0u, 4294967295u), 0u), false, Struct_1(false, vec4<u32>(39422u, 34968u, 33208u, 9149u), 0u), Struct_1(true, vec4<u32>(0u, 6744u, 4294967295u, 45660u), 0u), 1u)), Struct_4(Struct_2(Struct_1(false, vec4<u32>(17639u, 0u, 0u, 0u), 4294967295u), false, Struct_1(false, vec4<u32>(32620u, 1u, 1u, 1u), 1u), Struct_1(true, vec4<u32>(0u, 4294967295u, 4168u, 22612u), 12572u), 852u)), Struct_4(Struct_2(Struct_1(true, vec4<u32>(60447u, 0u, 6551u, 1u), 14374u), false, Struct_1(false, vec4<u32>(6677u, 40007u, 23333u, 123976u), 18717u), Struct_1(true, vec4<u32>(1u, 0u, 0u, 32277u), 1u), 126046u)), Struct_4(Struct_2(Struct_1(true, vec4<u32>(1266u, 1u, 1u, 63977u), 4294967295u), false, Struct_1(true, vec4<u32>(13201u, 0u, 1u, 1u), 69944u), Struct_1(false, vec4<u32>(107886u, 8702u, 4294967295u, 1u), 1u), 0u)), Struct_4(Struct_2(Struct_1(false, vec4<u32>(0u, 7965u, 4294967295u, 1u), 383u), true, Struct_1(true, vec4<u32>(9396u, 4294967295u, 4294967295u, 12752u), 12074u), Struct_1(false, vec4<u32>(0u, 0u, 1u, 11747u), 43053u), 26526u)), Struct_4(Struct_2(Struct_1(false, vec4<u32>(1u, 4294967295u, 1u, 0u), 1u), true, Struct_1(false, vec4<u32>(6385u, 54672u, 34403u, 67209u), 4294967295u), Struct_1(false, vec4<u32>(23006u, 4294967295u, 10173u, 57215u), 41525u), 4294967295u)), Struct_4(Struct_2(Struct_1(true, vec4<u32>(92160u, 0u, 4294967295u, 4294967295u), 70869u), true, Struct_1(false, vec4<u32>(4294967295u, 4294967295u, 73630u, 0u), 5010u), Struct_1(false, vec4<u32>(36024u, 28403u, 106863u, 0u), 4294967295u), 13403u)), Struct_4(Struct_2(Struct_1(false, vec4<u32>(32123u, 12744u, 23451u, 83877u), 4294967295u), false, Struct_1(false, vec4<u32>(4294967295u, 135750u, 0u, 1u), 82184u), Struct_1(false, vec4<u32>(32303u, 4294967295u, 4294967295u, 13067u), 29250u), 0u)), Struct_4(Struct_2(Struct_1(false, vec4<u32>(1u, 4294967295u, 10414u, 99398u), 1u), false, Struct_1(true, vec4<u32>(1u, 1u, 28u, 4294967295u), 4294967295u), Struct_1(false, vec4<u32>(0u, 55276u, 4294967295u, 116697u), 53545u), 4294967295u)), Struct_4(Struct_2(Struct_1(false, vec4<u32>(4294967295u, 38578u, 0u, 18967u), 4294967295u), true, Struct_1(false, vec4<u32>(26315u, 925u, 4294967295u, 4294967295u), 0u), Struct_1(false, vec4<u32>(6392u, 0u, 4294967295u, 1u), 1u), 1u)), Struct_4(Struct_2(Struct_1(false, vec4<u32>(4294967295u, 18980u, 0u, 0u), 1u), false, Struct_1(true, vec4<u32>(4294967295u, 24315u, 6911u, 61298u), 46721u), Struct_1(false, vec4<u32>(19289u, 16565u, 4294967295u, 22958u), 8768u), 0u)), Struct_4(Struct_2(Struct_1(false, vec4<u32>(1u, 32163u, 0u, 15319u), 1u), false, Struct_1(false, vec4<u32>(53537u, 1980u, 0u, 0u), 58104u), Struct_1(false, vec4<u32>(5557u, 54716u, 6589u, 4294967295u), 43697u), 473u)), Struct_4(Struct_2(Struct_1(false, vec4<u32>(4347u, 62307u, 8626u, 8918u), 21088u), false, Struct_1(false, vec4<u32>(77359u, 1u, 4294967295u, 44738u), 23930u), Struct_1(true, vec4<u32>(4294967295u, 1u, 1u, 1471u), 4294967295u), 22742u)), Struct_4(Struct_2(Struct_1(true, vec4<u32>(0u, 4294967295u, 126425u, 4009u), 4294967295u), false, Struct_1(true, vec4<u32>(51788u, 48056u, 1u, 12128u), 78734u), Struct_1(false, vec4<u32>(1u, 0u, 51528u, 16469u), 20107u), 17750u)), Struct_4(Struct_2(Struct_1(false, vec4<u32>(20030u, 84818u, 1u, 148855u), 87158u), true, Struct_1(false, vec4<u32>(4294967295u, 6172u, 30788u, 4294967295u), 1u), Struct_1(false, vec4<u32>(93977u, 18437u, 1u, 18907u), 34262u), 34042u)), Struct_4(Struct_2(Struct_1(true, vec4<u32>(67336u, 1u, 1u, 39522u), 79295u), true, Struct_1(true, vec4<u32>(404u, 30799u, 4294967295u, 1u), 343u), Struct_1(true, vec4<u32>(4265u, 0u, 30783u, 1u), 1u), 1u)));

var<private> global2: array<Struct_4, 28>;

var<private> global3: Struct_4;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = !global0.a;
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(global3.a.e, u_input.b)), 31u)];
    var var_1 = Struct_2(Struct_1(global0.a, ~vec4<u32>(_wgslsmith_add_u32(global3.a.e, 30447u), ~17493u, ~100159u, global0.c), 1u), !global0.a, global3.a.c, global3.a.a, ~(~(~(~4294967295u))));
    let var_2 = !(~(~(~0u)) < _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(global0.b, vec4<u32>(4853u, global3.a.a.b.x, 4294967295u, var_1.e)), 4294967295u));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -449f);
    return _wgslsmith_f_op_f32(floor(-381f));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> vec3<f32> {
    global0 = arg_1.b.a;
    let var_0 = vec2<bool>(any(!vec4<bool>(global3.a.a.a, all(vec3<bool>(global0.a, global3.a.d.a, global0.a)), !global0.a, true)), global0.a & !global3.a.d.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.x, arg_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.x, 722f)), _wgslsmith_f_op_f32(-arg_0.x))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(1000f))), arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -166f))));
    let var_2 = ~_wgslsmith_add_u32((~4294967295u << (firstTrailingBit(global3.a.d.c) % 32u)) & global3.a.a.c, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.c, countOneBits(0u)), _wgslsmith_add_vec3_u32(u_input.c.wzz, u_input.c.wyw)));
    let var_3 = vec3<u32>(arg_1.b.d.b.x ^ ~abs(global0.c & global3.a.e), 1u << (~global3.a.d.b.x % 32u), 0u);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_4) -> vec2<u32> {
    global0 = arg_3.a.d;
    var var_0 = ~_wgslsmith_sub_i32(u_input.a.x, 51043i);
    var var_1 = arg_1.x;
    global0 = arg_0;
    var var_2 = arg_2;
    return _wgslsmith_mult_vec2_u32(max(~vec2<u32>(arg_2.b.e, arg_3.a.c.b.x) | max(arg_2.b.d.b.yw, vec2<u32>(38299u, arg_2.b.c.c)), vec2<u32>(abs(9642u), global0.c)), ~(arg_2.b.c.b.yw >> (u_input.d % vec2<u32>(32u)))) >> (_wgslsmith_mult_vec2_u32(var_2.b.a.b.yy, vec2<u32>(~(arg_3.a.a.c ^ var_2.b.c.c), ~(~arg_2.b.c.c))) % vec2<u32>(32u));
}

fn func_2() -> vec3<bool> {
    var var_0 = func_5(Struct_1(global3.a.d.a || (all(vec4<bool>(global3.a.d.a, global0.a, global0.a, global0.a)) & (global3.a.a.a && false)), vec4<u32>(abs(global3.a.c.b.x), 1u, _wgslsmith_dot_vec3_u32(global3.a.d.b.xww, _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, 1u), global3.a.d.b.xzy)), global0.c), u_input.c.x), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -365f), 1208f)), Struct_3(all(vec2<bool>(global3.a.c.a, global3.a.b)), Struct_2(Struct_1(global3.a.a.a, vec4<u32>(31850u, 44851u, u_input.b, 4294967295u), u_input.b), global0.a, Struct_1(true, vec4<u32>(global3.a.e, 13926u, 1u, global3.a.d.b.x), u_input.b), Struct_1(false, u_input.c, global0.b.x), 52852u), !global0.a))), Struct_3(true, global3.a, any(!select(vec4<bool>(global3.a.b, global0.a, true, false), vec4<bool>(global0.a, global0.a, false, global0.a), vec4<bool>(global0.a, true, true, true)))), global2[_wgslsmith_index_u32(~1u, 28u)]);
    var var_1 = i32(-1i) * -2147483647i;
    global0 = global3.a.c;
    global0 = global3.a.c;
    return select(select(vec3<bool>(global0.a, global3.a.b, all(!vec2<bool>(false, global0.a))), !vec3<bool>(false, global3.a.b, true), select(!vec3<bool>(global3.a.b, global3.a.b, false), vec3<bool>(false, true, -62348i > u_input.a.x), !select(vec3<bool>(true, true, global3.a.c.a), vec3<bool>(global3.a.c.a, global0.a, global3.a.b), vec3<bool>(global3.a.a.a, false, global3.a.d.a)))), vec3<bool>(all(select(!vec3<bool>(false, false, global3.a.a.a), !vec3<bool>(true, global0.a, false), select(vec3<bool>(global0.a, false, global3.a.b), vec3<bool>(true, true, true), vec3<bool>(global0.a, global3.a.a.a, true)))), true, any(!(!vec4<bool>(false, false, true, global0.a)))), true);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec4<f32>, arg_3: vec3<u32>) -> bool {
    let var_0 = select(func_2(), select(vec3<bool>(true, global3.a.a.a, false), select(select(vec3<bool>(true, global3.a.d.a, true), !vec3<bool>(false, global3.a.a.a, false), false), func_2(), false & global3.a.d.a), false), !func_2());
    let var_1 = !select(!var_0.x, false, any(!(!var_0.zx)));
    var var_2 = ~global0.c;
    let var_3 = abs(~global0.b.yzz);
    global3 = global1[_wgslsmith_index_u32(~0u, 31u)];
    return false;
}

fn func_6(arg_0: u32, arg_1: vec3<bool>, arg_2: vec2<f32>) -> Struct_4 {
    let var_0 = arg_1.xy;
    let var_1 = arg_2.x;
    var var_2 = _wgslsmith_dot_vec4_i32(-(~(-abs(u_input.a))), u_input.a);
    var var_3 = vec2<bool>(global3.a.c.a, !global0.a);
    var_3 = !var_0;
    return global1[_wgslsmith_index_u32(min(~global0.c, firstTrailingBit(_wgslsmith_clamp_u32(firstTrailingBit(26316u), 39393u, reverseBits(~u_input.b)))), 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_6(4294967295u, !select(select(vec3<bool>(global0.a, global3.a.c.a, global0.a), vec3<bool>(global0.a, global3.a.b, false), !vec3<bool>(global3.a.c.a, true, global0.a)), select(!vec3<bool>(global3.a.d.a, global0.a, global3.a.c.a), !vec3<bool>(true, global0.a, true), true), vec3<bool>(true, func_1(788f, -1i, vec4<f32>(476f, 852f, 1000f, -1270f), global0.b.ywz), !global3.a.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-771f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1741f * 385f)))));
    let var_0 = -(~_wgslsmith_div_vec2_i32(abs(u_input.a.yx), -_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(-25177i, 0i))));
    global1 = array<Struct_4, 31>();
    let var_1 = Struct_1(func_1(_wgslsmith_f_op_f32(func_3()), _wgslsmith_mult_i32(-2147483647i, u_input.a.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-119f, -1592f, 612f, 1770f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-251f, -255f, -242f, -564f)), true)))), global0.b.zyx), global3.a.c.b, _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.d.x, 4294967295u), select(global0.c, 0u, true)), func_6(_wgslsmith_dot_vec3_u32(func_6(31260u, vec3<bool>(global0.a, false, true), vec2<f32>(331f, 780f)).a.a.b.wyy, vec3<u32>(1u, global0.c, 0u)), !select(vec3<bool>(global0.a, false, true), vec3<bool>(global0.a, global0.a, true), vec3<bool>(false, false, global0.a)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-436f, 181f)))).a.e));
    var var_2 = Struct_3(any(!vec2<bool>(global0.a, true)), global3.a, global0.a);
    var var_3 = vec3<f32>(2839f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -748f), _wgslsmith_f_op_f32(-1134f * 423f), 1f), Struct_3(false, Struct_2(Struct_1(global0.a, global3.a.a.b, global0.b.x), true, var_1, Struct_1(var_2.b.a.a, vec4<u32>(global0.b.x, var_2.b.a.c, global3.a.c.b.x, 45508u), 0u), 67650u), true))).x * _wgslsmith_f_op_f32(round(1265f))), -640f);
    var var_4 = func_6(func_5(var_2.b.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - var_3.x)), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-var_3.x)), Struct_3(true, Struct_2(Struct_1(true, global0.b, u_input.b), 48724u <= var_2.b.a.c, var_2.b.a, var_2.b.c, 4294967295u), var_2.a), func_6(~(~0u), func_2(), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(787f, 1397f), var_3.yx) - vec2<f32>(1000f, -666f)))).x, func_2(), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(var_3.x)), 161f)));
    var_4 = func_6(~global0.b.x, !vec3<bool>(true, !(var_4.a.a.b.x > 1u), true), var_3.yx);
    let var_5 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-576f, var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.zyx);
}

