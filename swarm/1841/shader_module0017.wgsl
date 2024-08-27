struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(vec4<i32>(1i, -10040i, 0i, -5052i), Struct_1(2147483647i, vec2<i32>(1i, 2147483647i), vec2<i32>(26722i, 57470i))), Struct_3(vec4<i32>(i32(-2147483648), -33298i, 2147483647i, 74239i), Struct_1(47520i, vec2<i32>(-1i, -54080i), vec2<i32>(2147483647i, -1i))), Struct_3(vec4<i32>(0i, -63654i, -40386i, 29294i), Struct_1(1i, vec2<i32>(-5712i, -67446i), vec2<i32>(-29909i, -11057i))), Struct_3(vec4<i32>(-48406i, -3065i, -41244i, 1i), Struct_1(-1i, vec2<i32>(-1i, -5771i), vec2<i32>(-11923i, 10691i))), Struct_3(vec4<i32>(-6628i, 27391i, -8519i, -1i), Struct_1(-42436i, vec2<i32>(i32(-2147483648), 17943i), vec2<i32>(0i, i32(-2147483648)))), Struct_3(vec4<i32>(2147483647i, -29527i, -10633i, -1i), Struct_1(22046i, vec2<i32>(1i, -1i), vec2<i32>(1i, -8284i))), Struct_3(vec4<i32>(-59884i, 2147483647i, 21904i, 1i), Struct_1(83994i, vec2<i32>(33823i, 2147483647i), vec2<i32>(i32(-2147483648), -1i))), Struct_3(vec4<i32>(-1421i, -5673i, 0i, -61294i), Struct_1(1i, vec2<i32>(-45665i, -17936i), vec2<i32>(0i, -1i))), Struct_3(vec4<i32>(-21783i, 1i, 20132i, -35895i), Struct_1(-1i, vec2<i32>(-1i, -367i), vec2<i32>(1i, -21000i))), Struct_3(vec4<i32>(-20425i, 2135i, 1i, 37605i), Struct_1(11390i, vec2<i32>(-16317i, 35958i), vec2<i32>(-18596i, 4041i))), Struct_3(vec4<i32>(2147483647i, 41901i, -1i, 2147483647i), Struct_1(i32(-2147483648), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-22417i, 5201i))), Struct_3(vec4<i32>(11922i, i32(-2147483648), 15847i, 1i), Struct_1(-1i, vec2<i32>(24486i, i32(-2147483648)), vec2<i32>(-60429i, -21317i))), Struct_3(vec4<i32>(12634i, -67283i, -1i, 1i), Struct_1(-1i, vec2<i32>(0i, 0i), vec2<i32>(41582i, 2147483647i))), Struct_3(vec4<i32>(i32(-2147483648), 0i, -23525i, -1i), Struct_1(16930i, vec2<i32>(34912i, i32(-2147483648)), vec2<i32>(2147483647i, 1i))), Struct_3(vec4<i32>(i32(-2147483648), -1i, 2147483647i, i32(-2147483648)), Struct_1(16764i, vec2<i32>(32032i, 23549i), vec2<i32>(1922i, -15630i))));

var<private> global1: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(2147483647i, -18943i), vec2<i32>(-9681i, 14635i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(43271i, -1i), vec2<i32>(16463i, -38670i), vec2<i32>(i32(-2147483648), 688i), vec2<i32>(34466i, 36619i), vec2<i32>(-1i, 0i), vec2<i32>(-8518i, 2147483647i), vec2<i32>(0i, -61136i), vec2<i32>(-1119i, 8395i), vec2<i32>(0i, 2147483647i), vec2<i32>(27286i, 35373i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(0i, 29881i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, -565i), vec2<i32>(6789i, 2147483647i), vec2<i32>(-9662i, i32(-2147483648)), vec2<i32>(-27622i, -1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-45533i, 22541i), vec2<i32>(i32(-2147483648), 9732i), vec2<i32>(18855i, 1669i), vec2<i32>(-26198i, -57128i), vec2<i32>(2147483647i, -29473i), vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-1i, -5877i), vec2<i32>(33541i, 1i), vec2<i32>(1470i, 0i), vec2<i32>(-17934i, 0i));

var<private> global2: Struct_1 = Struct_1(2147483647i, vec2<i32>(-31558i, -5492i), vec2<i32>(2147483647i, -15123i));

var<private> global3: array<Struct_2, 28>;

var<private> global4: array<Struct_2, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -274f);
    global0 = array<Struct_3, 15>();
    global3 = array<Struct_2, 28>();
    let var_1 = select(u_input.a, 0u, true);
    global1 = array<vec2<i32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_i32(global2.b.x, abs(-2147483647i << (u_input.a % 32u))), 4294967295u, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_0 + 746f), var_0, _wgslsmith_div_f32(-854f, 935f), -558f), vec4<f32>(_wgslsmith_f_op_f32(min(-1334f, 716f)), _wgslsmith_f_op_f32(-744f * -811f), _wgslsmith_f_op_f32(-1000f - 783f), var_0), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)))))), -_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global2.c.x, 2147483647i) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 234u), vec3<u32>(var_1, 4294967295u, var_1)) % vec3<u32>(32u)), select(vec3<i32>(-4645i, global2.a, -1i), -vec3<i32>(1i, global2.c.x, global2.b.x), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))));
}

