struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(vec4<i32>(i32(-2147483648), -1i, -25749i, 23800i)), Struct_4(vec4<i32>(13336i, 103897i, i32(-2147483648), i32(-2147483648))), Struct_4(vec4<i32>(-720i, i32(-2147483648), 1i, -62906i)), Struct_4(vec4<i32>(-34934i, 10072i, 5882i, -26337i)), Struct_4(vec4<i32>(-51411i, i32(-2147483648), 14643i, 80715i)), Struct_4(vec4<i32>(2147483647i, 8524i, 0i, -5255i)), Struct_4(vec4<i32>(-9574i, 24185i, -28149i, -1i)), Struct_4(vec4<i32>(i32(-2147483648), -1i, -1i, 2147483647i)), Struct_4(vec4<i32>(0i, i32(-2147483648), 27449i, i32(-2147483648))), Struct_4(vec4<i32>(7551i, -898i, 0i, -18312i)), Struct_4(vec4<i32>(9377i, 44704i, 2147483647i, i32(-2147483648))), Struct_4(vec4<i32>(2147483647i, -21883i, 2147483647i, i32(-2147483648))), Struct_4(vec4<i32>(35891i, 1i, i32(-2147483648), 2147483647i)), Struct_4(vec4<i32>(0i, 2147483647i, -35565i, 0i)), Struct_4(vec4<i32>(59406i, 11960i, i32(-2147483648), 2147483647i)), Struct_4(vec4<i32>(-19834i, 4208i, -23327i, 50832i)), Struct_4(vec4<i32>(15716i, -1i, 27864i, i32(-2147483648))), Struct_4(vec4<i32>(2147483647i, -6932i, -27925i, i32(-2147483648))), Struct_4(vec4<i32>(0i, 1i, -1i, 2147483647i)), Struct_4(vec4<i32>(0i, -1i, -1i, 0i)), Struct_4(vec4<i32>(2147483647i, i32(-2147483648), -373i, -1285i)), Struct_4(vec4<i32>(17235i, 2147483647i, 1i, -24639i)), Struct_4(vec4<i32>(-1i, 1i, 0i, 0i)), Struct_4(vec4<i32>(-67810i, -17995i, 0i, 0i)), Struct_4(vec4<i32>(-9736i, -16758i, 31136i, -41868i)), Struct_4(vec4<i32>(50622i, -1056i, 16674i, 6916i)), Struct_4(vec4<i32>(21516i, -19135i, i32(-2147483648), 60309i)), Struct_4(vec4<i32>(-21465i, 0i, 1i, -1i)), Struct_4(vec4<i32>(14099i, i32(-2147483648), -23583i, 1i)), Struct_4(vec4<i32>(19156i, 11098i, i32(-2147483648), -20555i)), Struct_4(vec4<i32>(0i, -35248i, i32(-2147483648), -1i)), Struct_4(vec4<i32>(1i, i32(-2147483648), -42288i, i32(-2147483648))));

var<private> global2: bool = false;

var<private> global3: array<Struct_4, 28>;

var<private> global4: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec2<i32>(2147483647i, 44290i), Struct_1(19080u), vec2<f32>(-1167f, 150f)), Struct_2(vec2<i32>(-6198i, -1i), Struct_1(25886u), vec2<f32>(225f, 1100f)), Struct_2(vec2<i32>(18154i, 1i), Struct_1(26860u), vec2<f32>(-749f, -110f)), Struct_2(vec2<i32>(-38854i, -5406i), Struct_1(28238u), vec2<f32>(-1234f, -1723f)), Struct_2(vec2<i32>(3371i, -25343i), Struct_1(37821u), vec2<f32>(-298f, -2596f)), Struct_2(vec2<i32>(0i, -45925i), Struct_1(21999u), vec2<f32>(1993f, -104f)), Struct_2(vec2<i32>(23862i, i32(-2147483648)), Struct_1(37026u), vec2<f32>(-184f, 479f)));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec4<bool>, arg_3: u32) -> bool {
    var var_0 = arg_0.b;
    global3 = array<Struct_4, 28>();
    var_0 = Struct_1(~var_0.a);
    global3 = array<Struct_4, 28>();
    var var_1 = Struct_5(!arg_2.x, 4294967295u, _wgslsmith_clamp_vec4_i32(~select(vec4<i32>(u_input.b, -1i, u_input.b, arg_0.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.x, u_input.b, arg_0.a.x, 1i), vec4<i32>(arg_0.a.x, -1i, -1i, arg_0.a.x)), any(arg_2.zzz)), vec4<i32>(min(u_input.b, abs(-16105i)), 0i, abs(u_input.b) << (32877u % 32u), ~_wgslsmith_clamp_i32(59937i, arg_0.a.x, -40848i)), ~countOneBits(vec4<i32>(1085i, -1i, arg_0.a.x, u_input.b)) >> (~(vec4<u32>(4294967295u, 1u, var_0.a, 19516u) >> (vec4<u32>(11139u, 12138u, arg_0.b.a, 28204u) % vec4<u32>(32u))) % vec4<u32>(32u))), arg_0.a.x);
    return !(!(arg_2.x | arg_2.x));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: f32, arg_3: vec4<i32>) -> bool {
    global2 = false;
    let var_0 = _wgslsmith_f_op_f32(-global0.a.x);
    let var_1 = 3262i;
    global1 = array<Struct_4, 32>();
    var var_2 = _wgslsmith_add_vec4_i32(reverseBits(abs(vec4<i32>(var_1, arg_0, -29844i, 2147483647i)) << (~(~vec4<u32>(u_input.a.x, 21807u, 4294967295u, 27696u)) % vec4<u32>(32u))), vec4<i32>(u_input.b, 1i, i32(-1i) * -(~var_1), -var_1));
    return arg_1.x;
}

fn func_1() -> u32 {
    let var_0 = vec4<bool>(true, all(vec2<bool>(select(true, func_2(global4[_wgslsmith_index_u32(u_input.a.x, 7u)], 25871u, vec4<bool>(true, false, false, false), 1280u), true), func_3(u_input.b, vec2<bool>(true, true), _wgslsmith_f_op_f32(global0.a.x * global0.a.x), vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i)))), u_input.b != 2147483647i, !((_wgslsmith_f_op_f32(f32(-1f) * -1011f) >= global0.a.x) & (true & all(vec3<bool>(true, true, true)))));
    var var_1 = any(!vec4<bool>(false, !(24510u < u_input.a.x), !var_0.x, all(!var_0.wz)));
    global3 = array<Struct_4, 28>();
    var_1 = true;
    let var_2 = (vec3<i32>(firstLeadingBit(1i), abs(_wgslsmith_add_i32(87i, u_input.b)), _wgslsmith_add_i32(u_input.b, 2147483647i)) << ((vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.a), u_input.a.x, global0.c.a) & vec3<u32>(global0.b.a << (58085u % 32u), global0.c.a & u_input.a.x, 1u)) % vec3<u32>(32u))) | _wgslsmith_add_vec3_i32(max(vec3<i32>(u_input.b, 18150i, -2147483647i), ~vec3<i32>(u_input.b, 50428i, 2147483647i)) | min(vec3<i32>(0i, -9161i, u_input.b), firstLeadingBit(vec3<i32>(71067i, u_input.b, -25668i))), select(vec3<i32>(_wgslsmith_clamp_i32(-1i, u_input.b, 0i), -u_input.b, -u_input.b), vec3<i32>(u_input.b & 11690i, u_input.b >> (0u % 32u), 1i), var_0.yyy));
    return _wgslsmith_dot_vec4_u32((vec4<u32>(global0.d.a, u_input.a.x, 0u, abs(11405u)) >> (reverseBits(vec4<u32>(30700u, global0.b.a, 13986u, 15213u)) % vec4<u32>(32u))) ^ ~(~(~vec4<u32>(23832u, 1u, 60933u, 4294967295u))), max(vec4<u32>(global0.b.a, 61268u, 65233u, u_input.a.x), vec4<u32>(firstLeadingBit(u_input.a.x), 1u, global0.b.a, ~u_input.a.x) | ~firstLeadingBit(vec4<u32>(u_input.a.x, global0.d.a, global0.b.a, u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(func_1(), 28u)];
    let var_1 = !(firstTrailingBit(u_input.b) < -1i);
    global3 = array<Struct_4, 28>();
    var var_2 = global4[_wgslsmith_index_u32(~(~(0u << (global0.c.a % 32u))), 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.x, 3002f, 270f)) - vec3<f32>(-796f, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(434f + -1170f)))), global0.a, _wgslsmith_sub_i32(15444i, -65283i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(403f - 376f)), 1049f))), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, global0.b.a, 4294967295u, 1685u), ~vec4<u32>(var_2.b.a, 59206u, 40518u, global0.c.a)) & vec4<u32>(select(min(52499u, u_input.a.x), countOneBits(4294967295u), true), ~global0.d.a, abs(~7771u), u_input.a.x));
}

