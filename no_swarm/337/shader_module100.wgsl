struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 16>;

var<private> global1: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(false, vec3<u32>(1u, 4294967295u, 80725u), vec4<f32>(-1694f, -142f, 1098f, 1275f)), Struct_2(true, vec3<u32>(1u, 18060u, 112582u), vec4<f32>(294f, 828f, 931f, -119f)), Struct_2(false, vec3<u32>(0u, 81052u, 49360u), vec4<f32>(-1285f, -425f, -392f, -368f)), Struct_2(false, vec3<u32>(104949u, 3083u, 1u), vec4<f32>(2211f, -173f, 774f, 1052f)), Struct_2(true, vec3<u32>(29282u, 1u, 29890u), vec4<f32>(-189f, -681f, 1300f, -2125f)), Struct_2(true, vec3<u32>(4938u, 1u, 47920u), vec4<f32>(463f, 506f, 203f, 1275f)), Struct_2(true, vec3<u32>(397u, 17201u, 0u), vec4<f32>(-1105f, 468f, 480f, 937f)), Struct_2(false, vec3<u32>(40415u, 107277u, 5297u), vec4<f32>(-150f, 1344f, -816f, -777f)), Struct_2(true, vec3<u32>(4294967295u, 0u, 0u), vec4<f32>(1353f, 664f, 1153f, 1044f)), Struct_2(false, vec3<u32>(4294967295u, 0u, 36030u), vec4<f32>(-977f, 563f, -1056f, 566f)), Struct_2(false, vec3<u32>(31u, 77081u, 1u), vec4<f32>(1749f, -319f, 432f, 842f)), Struct_2(false, vec3<u32>(13859u, 0u, 1u), vec4<f32>(216f, 2880f, 382f, -873f)), Struct_2(false, vec3<u32>(30246u, 1u, 1u), vec4<f32>(-2375f, 1437f, -216f, -687f)), Struct_2(false, vec3<u32>(36796u, 9705u, 4616u), vec4<f32>(-1000f, 1000f, -714f, -1268f)), Struct_2(true, vec3<u32>(1u, 25670u, 0u), vec4<f32>(1607f, 900f, -100f, 365f)), Struct_2(false, vec3<u32>(14221u, 1u, 16905u), vec4<f32>(-843f, 772f, 1382f, 564f)), Struct_2(true, vec3<u32>(4294967295u, 1u, 0u), vec4<f32>(2239f, 1670f, -456f, 1405f)), Struct_2(false, vec3<u32>(62869u, 1u, 13503u), vec4<f32>(1000f, 2025f, 1324f, 1268f)), Struct_2(true, vec3<u32>(6751u, 12973u, 16369u), vec4<f32>(-181f, -147f, 549f, -366f)), Struct_2(true, vec3<u32>(51415u, 1u, 39847u), vec4<f32>(-281f, 910f, 421f, -848f)), Struct_2(true, vec3<u32>(4294967295u, 4294967295u, 0u), vec4<f32>(-759f, -224f, -916f, 166f)), Struct_2(true, vec3<u32>(1u, 23413u, 1u), vec4<f32>(226f, 103f, -1014f, -647f)), Struct_2(false, vec3<u32>(4294967295u, 1u, 41696u), vec4<f32>(-1291f, 1126f, 1000f, -1605f)), Struct_2(false, vec3<u32>(0u, 73644u, 0u), vec4<f32>(-2443f, 306f, -983f, 921f)), Struct_2(false, vec3<u32>(4294967295u, 4294967295u, 133813u), vec4<f32>(2540f, 1383f, 1000f, 252f)), Struct_2(false, vec3<u32>(0u, 4294967295u, 14975u), vec4<f32>(-499f, -495f, -180f, 147f)), Struct_2(false, vec3<u32>(0u, 1u, 1u), vec4<f32>(962f, -305f, -679f, 707f)), Struct_2(true, vec3<u32>(52728u, 45945u, 0u), vec4<f32>(151f, -1376f, -1000f, 454f)), Struct_2(true, vec3<u32>(0u, 0u, 1u), vec4<f32>(1321f, 1000f, -1295f, 676f)), Struct_2(false, vec3<u32>(1u, 1u, 97131u), vec4<f32>(-926f, -1294f, 1000f, -122f)), Struct_2(true, vec3<u32>(16810u, 68028u, 18912u), vec4<f32>(-1000f, -268f, 478f, -245f)));

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    let var_0 = all(vec3<bool>(false, _wgslsmith_f_op_f32(abs(-1238f)) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1933f - -2210f))), any(vec2<bool>(u_input.b < u_input.b, 3916u != global2.b.x))));
    var var_1 = u_input.b;
    let var_2 = any(select(vec4<bool>(all(vec4<bool>(global2.a, true, global2.a, true)), var_0, true, global2.a), select(select(vec4<bool>(false, false, global2.a, global2.a), !vec4<bool>(global2.a, true, true, true), !vec4<bool>(true, true, var_0, true)), !(!vec4<bool>(var_0, global2.a, false, false)), vec4<bool>(global2.b.x != 18928u, var_0, global2.a, true)), !select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(true, var_0, false, global2.a), select(vec4<bool>(global2.a, true, true, true), vec4<bool>(var_0, false, global2.a, true), global2.a))));
    var_1 = -1i ^ ~(~(-u_input.b));
    var var_3 = false;
    return global2.b.x;
}

fn func_2() -> f32 {
    global0 = array<vec2<bool>, 16>();
    global0 = array<vec2<bool>, 16>();
    global2 = Struct_1(true, vec3<u32>(1u, 1u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(~38315u, func_3()), global2.b.x)));
    global2 = Struct_1(false, min(vec3<u32>(_wgslsmith_clamp_u32(global2.b.x, 16914u, global2.b.x), _wgslsmith_sub_u32(81010u, u_input.d), u_input.d) << (global2.b % vec3<u32>(32u)), global2.b));
    let var_0 = Struct_1(any(select(!select(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(global2.b.x, 16u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.b.x, u_input.e), 16u)], any(vec2<bool>(false, global2.a)))), _wgslsmith_clamp_vec3_u32(global2.b, u_input.a.wwz, vec3<u32>(~22746u, ~global2.b.x, _wgslsmith_mod_u32(19166u, u_input.e))) ^ select(~max(vec3<u32>(52021u, 4294967295u, global2.b.x), u_input.c.wzy), ~vec3<u32>(u_input.a.x, u_input.d, 49312u), select(!vec3<bool>(global2.a, global2.a, global2.a), vec3<bool>(global2.a, global2.a, true), global2.a)));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-205f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-383f)))))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(~1u), 16u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 123f, arg_0, arg_0)))) * vec4<f32>(-330f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))), arg_1, _wgslsmith_f_op_f32(func_2()))));
    let var_2 = -10112i << (_wgslsmith_mod_u32(u_input.d | ~min(global2.b.x, global2.b.x), ~4294967295u) % 32u);
    var var_3 = u_input.c;
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(max(var_1.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-267f + arg_1), _wgslsmith_f_op_f32(sign(arg_0)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zz) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1.wy, var_1.zy)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zx)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xy), _wgslsmith_div_vec2_f32(var_1.wz, vec2<f32>(arg_1, arg_1)))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.x)), var_1.x), _wgslsmith_f_op_f32(664f + 151f))));
    return Struct_1(true, vec3<u32>(~arg_3.b.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(22943u, arg_3.b.x), 0u), ~firstTrailingBit(5724u)));
}

fn func_1() -> Struct_1 {
    let var_0 = !vec3<bool>(global2.a, global2.a, select(false, global2.a, any(!vec4<bool>(false, global2.a, true, global2.a))));
    global1 = array<Struct_2, 31>();
    let var_1 = 2147483647i;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(602f, -2229f)) * _wgslsmith_f_op_f32(floor(-1319f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2493f + 539f), _wgslsmith_f_op_f32(f32(-1f) * -175f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1853f - 1204f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -799f), 194f)), -1000f));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-277f))));
    return func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - 231f), var_2.x)), -1014f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1992f)), -u_input.b <= -_wgslsmith_clamp_i32(~(-6608i), u_input.b ^ u_input.b, var_1), Struct_1(false, abs(~vec3<u32>(u_input.e, 1u, global2.b.x)) << ((global2.b >> (global2.b % vec3<u32>(32u))) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = firstLeadingBit(countOneBits(vec3<i32>(countOneBits(u_input.b), _wgslsmith_sub_i32(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(-1i, -19036i))), 1i)));
    var_0 = func_1();
    var var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(~(~(u_input.d | 57765u)), 1u, 1u), vec3<u32>(firstLeadingBit(4294967295u), _wgslsmith_mult_u32(firstLeadingBit(var_0.b.x), _wgslsmith_dot_vec4_u32(~u_input.a, u_input.c)), _wgslsmith_mult_u32(1u, ~firstTrailingBit(var_0.b.x))));
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~1u);
}

