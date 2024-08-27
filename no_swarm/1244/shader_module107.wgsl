struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec2<u32>(0u, 12858u), 115f), Struct_2(vec2<u32>(11742u, 44629u), -446f), Struct_2(vec2<u32>(17862u, 1u), -441f), Struct_2(vec2<u32>(76184u, 0u), -415f), Struct_2(vec2<u32>(1u, 25959u), -1000f), Struct_2(vec2<u32>(95863u, 79397u), -1049f), Struct_2(vec2<u32>(4294967295u, 4294967295u), 347f), Struct_2(vec2<u32>(70739u, 49212u), 1000f), Struct_2(vec2<u32>(76201u, 100382u), -837f), Struct_2(vec2<u32>(4294967295u, 1u), -802f), Struct_2(vec2<u32>(0u, 21660u), 468f), Struct_2(vec2<u32>(28250u, 1u), -396f), Struct_2(vec2<u32>(0u, 5538u), 691f), Struct_2(vec2<u32>(23429u, 61132u), -438f), Struct_2(vec2<u32>(39412u, 4294967295u), -834f), Struct_2(vec2<u32>(20768u, 27517u), 390f), Struct_2(vec2<u32>(1u, 14572u), 516f), Struct_2(vec2<u32>(4294967295u, 4294967295u), -1701f), Struct_2(vec2<u32>(1u, 0u), -1237f), Struct_2(vec2<u32>(1u, 1u), -879f), Struct_2(vec2<u32>(4294967295u, 26849u), -847f), Struct_2(vec2<u32>(1u, 23830u), 336f), Struct_2(vec2<u32>(1u, 4294967295u), -587f), Struct_2(vec2<u32>(1u, 4294967295u), -2010f), Struct_2(vec2<u32>(62033u, 16648u), -866f), Struct_2(vec2<u32>(67890u, 1u), 1000f), Struct_2(vec2<u32>(4783u, 74179u), 1214f), Struct_2(vec2<u32>(25065u, 48468u), 804f), Struct_2(vec2<u32>(4294967295u, 4294967295u), 807f));

var<private> global1: Struct_2 = Struct_2(vec2<u32>(105689u, 95760u), 283f);

var<private> global2: Struct_2;

var<private> global3: Struct_1;

var<private> global4: array<Struct_2, 16>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>) -> Struct_2 {
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(~firstLeadingBit(global1.a.x), global1.a.x ^ ~global1.a.x) | 0u), 29u)];
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(f32(-1f) * -700f), global3.c, _wgslsmith_f_op_f32(ceil(global2.b))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, -396f, -107f, -360f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-545f, -1140f, global2.b, arg_1.b) - vec4<f32>(915f, arg_1.b, 2475f, 422f))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1035f - _wgslsmith_f_op_f32(-786f - -107f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global2.b, 148f)))), arg_2.c, global3.a) + vec4<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(trunc(global1.b)))), _wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(arg_0.x))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(step(1000f, -420f)), -_wgslsmith_add_i32(-global3.e, global3.e), -1920f, false, _wgslsmith_div_i32(-2147483647i, u_input.a | -93214i));
    let var_2 = global4[_wgslsmith_index_u32(~62844u, 16u)];
    global0 = array<Struct_2, 29>();
    let var_3 = countOneBits(-13083i << (arg_1.a.x % 32u));
    return !(true || (var_1.d || any(select(vec2<bool>(true, global3.d), vec2<bool>(false, var_1.d), true))));
}

fn func_2() -> Struct_1 {
    var var_0 = select(vec3<bool>(func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.a, 1557f, 899f), vec3<f32>(-879f, global3.a, 2180f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b, -1068f, global1.b), vec3<f32>(351f, -1194f, global1.b), true)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, global3.d), vec3<bool>(global3.d, true, false)))), func_1(func_1(vec2<u32>(29359u, 4294967295u), vec3<i32>(-2147483647i, 9777i, u_input.d.x)).a, u_input.d.zwx), Struct_1(_wgslsmith_f_op_f32(abs(global2.b)), _wgslsmith_dot_vec4_i32(u_input.d, u_input.d), global3.a, all(vec4<bool>(global3.d, global3.d, true, false)), ~(-2147483647i))), global3.d, global1.b > 834f), !(!select(!vec3<bool>(true, false, global3.d), vec3<bool>(global3.d, false, global3.d), global3.d)), u_input.d.x < 0i);
    global4 = array<Struct_2, 16>();
    let var_1 = abs(vec2<i32>(reverseBits(17295i), _wgslsmith_dot_vec2_i32(vec2<i32>(~(-1i), global3.b), ~_wgslsmith_sub_vec2_i32(u_input.d.xx, vec2<i32>(u_input.d.x, u_input.a)))));
    global1 = Struct_2(~reverseBits(countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(82100u, global1.a.x), global2.a))), global3.c);
    global0 = array<Struct_2, 29>();
    return Struct_1(global1.b, -(u_input.c ^ reverseBits(global3.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1004f - global3.a))))), global3.d, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, -1i, -9529i), u_input.d.yzy), 0i), i32(-1i) * -61774i, u_input.c, -var_1.x), select(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.c, global3.e, u_input.b, 2147483647i), max(u_input.d, vec4<i32>(-1i, u_input.c, 0i, var_1.x))), ~vec4<i32>(15591i, -28598i, 0i, u_input.d.x), vec4<bool>(var_0.x, true, !var_0.x, !var_0.x))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global1 = Struct_2(global1.a, -1276f);
    var var_0 = _wgslsmith_f_op_f32(-global1.b);
    var var_1 = abs(countOneBits(_wgslsmith_mod_vec4_u32(~(vec4<u32>(4294967295u, global2.a.x, 1u, 11023u) | vec4<u32>(global1.a.x, 4294967295u, 33083u, global1.a.x)), select(vec4<u32>(global1.a.x, 54416u, 5208u, 4294967295u), vec4<u32>(global1.a.x, global2.a.x, global2.a.x, 4294967295u), vec4<bool>(global3.d, global3.d, false, arg_0.d)) & max(vec4<u32>(global2.a.x, global1.a.x, global1.a.x, 0u), vec4<u32>(118749u, global2.a.x, global2.a.x, global1.a.x)))));
    global1 = Struct_2(global1.a, global3.c);
    global3 = func_2();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(1u, 29u)];
    global1 = func_1(~_wgslsmith_sub_vec2_u32(min(_wgslsmith_div_vec2_u32(global2.a, vec2<u32>(4294967295u, 1u)), global2.a), firstLeadingBit(vec2<u32>(17792u, 42376u) << (global1.a % vec2<u32>(32u)))), vec3<i32>(-1i) * -(~(~u_input.d.wyw)));
    let var_0 = func_4(func_2());
    var var_1 = var_0.e;
    var var_2 = Struct_1(-1000f, firstTrailingBit(reverseBits(global3.b)), global3.a, !(~(-1i) >= (u_input.d.x ^ (i32(-1i) * -1i))), 0i);
    global3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, global3.c)))), global3.e, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-339f)))), var_2.d, 7141i);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-581f, _wgslsmith_f_op_f32(-global1.b)));
    let var_4 = max(abs(_wgslsmith_mult_i32(_wgslsmith_div_i32(31962i, -33906i), abs(1i))), min(_wgslsmith_dot_vec2_i32(u_input.d.zz, vec2<i32>(u_input.b, global3.b)), _wgslsmith_add_i32(15028i, global3.b)) | (2147483647i & global3.e)) >> (_wgslsmith_div_u32(func_1(vec2<u32>(~27834u, _wgslsmith_dot_vec3_u32(vec3<u32>(55815u, 32191u, 4294967295u), vec3<u32>(global1.a.x, global1.a.x, 0u))), vec3<i32>(var_0.b, var_2.b, -1i) >> ((vec3<u32>(global2.a.x, global2.a.x, global2.a.x) << (vec3<u32>(4294967295u, global2.a.x, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))).a.x, 37034u) % 32u);
    global4 = array<Struct_2, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.a.x, 1u, global1.a.x, ~0u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2.a.x, global1.a.x, 0u), vec4<u32>(4294967295u, global1.a.x, 26060u, 28517u)), 50234u >> (global2.a.x % 32u), 1u, func_1(global1.a, vec3<i32>(var_0.b, 14159i, global3.b)).a.x)), ~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global1.a.x, 0u, 42374u, 22190u), vec4<u32>(global1.a.x, 29860u, 4294967295u, 9662u)), firstTrailingBit(vec4<u32>(global2.a.x, 4294967295u, global1.a.x, 5840u)))), -(_wgslsmith_mod_vec4_i32(u_input.d, u_input.d) >> (max(abs(vec4<u32>(39121u, 89031u, 27656u, 32903u)), vec4<u32>(60879u, 1u, global1.a.x, global1.a.x)) % vec4<u32>(32u))));
}

