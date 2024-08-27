struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<i32>(1i, 8357i, i32(-2147483648)), vec3<f32>(-1433f, 134f, 955f), vec4<u32>(29026u, 0u, 51924u, 2507u), 1u), Struct_1(vec3<i32>(2147483647i, -25005i, 11992i), vec3<f32>(845f, -680f, 581f), vec4<u32>(0u, 4294967295u, 28343u, 0u), 28021u), Struct_1(vec3<i32>(1i, 1i, 21827i), vec3<f32>(-549f, 1761f, 2112f), vec4<u32>(20673u, 888u, 1u, 1u), 38142u), Struct_1(vec3<i32>(-19206i, -1i, 23196i), vec3<f32>(527f, -1816f, 430f), vec4<u32>(4294967295u, 58131u, 0u, 39968u), 4294967295u), Struct_1(vec3<i32>(0i, -10395i, 1i), vec3<f32>(828f, -456f, 2078f), vec4<u32>(48137u, 52676u, 0u, 4294967295u), 14366u), Struct_1(vec3<i32>(2147483647i, 5796i, 27228i), vec3<f32>(626f, -348f, -191f), vec4<u32>(14555u, 1u, 4294967295u, 1u), 23153u), Struct_1(vec3<i32>(48405i, 94107i, -1i), vec3<f32>(-1160f, 580f, 158f), vec4<u32>(4294967295u, 12679u, 4294967295u, 1u), 0u), Struct_1(vec3<i32>(-1i, -13683i, -26127i), vec3<f32>(-105f, 434f, 420f), vec4<u32>(32245u, 4294967295u, 12483u, 4294967295u), 4294967295u), Struct_1(vec3<i32>(-37186i, 0i, 41459i), vec3<f32>(-1542f, 2223f, -1979f), vec4<u32>(47984u, 50134u, 1u, 0u), 4294967295u), Struct_1(vec3<i32>(23681i, 0i, 10668i), vec3<f32>(-227f, 1736f, 2055f), vec4<u32>(1u, 0u, 44136u, 15097u), 40878u), Struct_1(vec3<i32>(2147483647i, -3972i, 50818i), vec3<f32>(-236f, -819f, 3158f), vec4<u32>(82135u, 4446u, 0u, 1u), 39489u), Struct_1(vec3<i32>(1i, i32(-2147483648), -43758i), vec3<f32>(-1339f, 471f, 515f), vec4<u32>(4294967295u, 42858u, 12440u, 10661u), 14501u), Struct_1(vec3<i32>(6932i, -27337i, -15674i), vec3<f32>(-293f, 1000f, -577f), vec4<u32>(14807u, 0u, 10589u, 18415u), 4294967295u), Struct_1(vec3<i32>(-30367i, -1i, i32(-2147483648)), vec3<f32>(1533f, -181f, 615f), vec4<u32>(29818u, 1u, 40808u, 49420u), 642u), Struct_1(vec3<i32>(-4376i, i32(-2147483648), 1i), vec3<f32>(546f, 758f, 281f), vec4<u32>(54403u, 35417u, 1389u, 22803u), 40275u), Struct_1(vec3<i32>(1i, -37136i, -18775i), vec3<f32>(-100f, -1000f, 2698f), vec4<u32>(1u, 17055u, 0u, 85257u), 0u), Struct_1(vec3<i32>(1i, 1i, -25467i), vec3<f32>(-365f, 889f, -2315f), vec4<u32>(33094u, 1u, 0u, 34376u), 4294967295u), Struct_1(vec3<i32>(0i, 2147483647i, 28256i), vec3<f32>(939f, 928f, 1721f), vec4<u32>(0u, 1u, 47790u, 1u), 1u), Struct_1(vec3<i32>(-9469i, 21868i, 15870i), vec3<f32>(-721f, 157f, -233f), vec4<u32>(12455u, 29264u, 6872u, 51568u), 17423u), Struct_1(vec3<i32>(-1i, 1i, 9807i), vec3<f32>(429f, 576f, 158f), vec4<u32>(1u, 1u, 0u, 1u), 4761u), Struct_1(vec3<i32>(i32(-2147483648), 4319i, -24538i), vec3<f32>(-709f, 1795f, -262f), vec4<u32>(1u, 0u, 0u, 2598u), 70404u), Struct_1(vec3<i32>(-1i, -4032i, i32(-2147483648)), vec3<f32>(364f, -1000f, 803f), vec4<u32>(44955u, 158u, 4294967295u, 0u), 4294967295u), Struct_1(vec3<i32>(3320i, -28021i, -1i), vec3<f32>(-633f, -1000f, 1632f), vec4<u32>(0u, 1u, 4294967295u, 14923u), 0u));

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<i32>(-23184i, 0i, i32(-2147483648)), vec3<f32>(1086f, -577f, 696f), vec4<u32>(29267u, 1u, 43144u, 0u), 56867u), Struct_1(vec3<i32>(-70899i, 1i, -3541i), vec3<f32>(1478f, 570f, 1000f), vec4<u32>(17866u, 0u, 35148u, 0u), 90338u), Struct_1(vec3<i32>(-18627i, -29515i, 39614i), vec3<f32>(-1085f, -453f, 1000f), vec4<u32>(9714u, 0u, 0u, 68844u), 0u), Struct_1(vec3<i32>(2147483647i, 0i, -5723i), vec3<f32>(-1182f, -382f, 1181f), vec4<u32>(92152u, 91701u, 78489u, 1u), 0u), Struct_1(vec3<i32>(-1i, -35237i, 32847i), vec3<f32>(-682f, -1377f, -371f), vec4<u32>(0u, 37534u, 16470u, 1u), 1u), Struct_1(vec3<i32>(i32(-2147483648), -23000i, 4326i), vec3<f32>(-1089f, -720f, -316f), vec4<u32>(20327u, 4294967295u, 34462u, 1u), 93506u), Struct_1(vec3<i32>(-8423i, 1i, 0i), vec3<f32>(-1215f, 1865f, 486f), vec4<u32>(40185u, 16509u, 40973u, 4294967295u), 16801u), Struct_1(vec3<i32>(-1i, 2147483647i, 22165i), vec3<f32>(-741f, -980f, -499f), vec4<u32>(0u, 0u, 25385u, 1u), 4385u), Struct_1(vec3<i32>(-53767i, -40579i, 10932i), vec3<f32>(2373f, 901f, -335f), vec4<u32>(0u, 1u, 0u, 0u), 0u), Struct_1(vec3<i32>(i32(-2147483648), -1i, 1i), vec3<f32>(730f, -570f, -344f), vec4<u32>(1u, 886u, 0u, 83261u), 70994u), Struct_1(vec3<i32>(2147483647i, -2487i, -28932i), vec3<f32>(159f, -1274f, -299f), vec4<u32>(7257u, 0u, 0u, 71546u), 1u), Struct_1(vec3<i32>(9941i, 0i, -30487i), vec3<f32>(181f, 630f, 851f), vec4<u32>(4294967295u, 683u, 1u, 1037u), 34686u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 23>();
    global3 = array<Struct_1, 12>();
    var var_0 = u_input.a.yyw;
    let var_1 = u_input.b.xw;
    var var_2 = Struct_1(-(countOneBits(u_input.a.zwy) ^ u_input.a.xzy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1555f - 413f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2985f * 326f) + 1894f), _wgslsmith_f_op_f32(abs(-855f)))), ~(_wgslsmith_mult_vec4_u32(u_input.b, _wgslsmith_mult_vec4_u32(vec4<u32>(8830u, 88623u, 61075u, 40206u), u_input.b)) | (u_input.b >> (~vec4<u32>(u_input.c, u_input.b.x, 29253u, 49239u) % vec4<u32>(32u)))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~(~var_1), ~vec2<u32>(var_1.x, 76669u) << (u_input.e.zy % vec2<u32>(32u))), ~vec2<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(84826u, 0u), vec2<u32>(22800u, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.d, 1i), vec3<i32>(2147483647i, -35366i, 1i) >> (u_input.e % vec3<u32>(32u)))), (i32(-1i) * -17057i) >> (var_2.d % 32u), countOneBits(abs(u_input.a.x) ^ min(1i, u_input.a.x))));
}

