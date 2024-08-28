struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec4<f32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<u32>(47658u, 26392u, 6367u), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global1: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global2: Struct_2;

var<private> global3: array<bool, 32> = array<bool, 32>(true, false, false, true, true, false, false, true, false, false, true, true, false, true, true, false, false, false, true, false, true, false, false, true, false, false, false, false, false, false, true, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global3 = array<bool, 32>();
    global3 = array<bool, 32>();
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.d.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.b.x * 1338f))), global2.b.b.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-635f + global2.c.b.x)), -1138f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-773f, 375f), _wgslsmith_f_op_vec2_f32(abs(global2.b.b.xw)), !global0.b)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.b.x, 1000f)) - _wgslsmith_f_op_vec2_f32(ceil(global2.b.b.wz))))));
    return _wgslsmith_mod_u32(global0.a.x, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u >> (global2.c.d.x % 32u), global0.a.x, 41611u, u_input.e)), vec4<u32>(_wgslsmith_sub_u32(1u, global0.a.x), 4294967295u, max(1u, 22624u), min(global0.a.x, global2.e)) | reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 46874u, global2.d.c, u_input.b.x), vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, global0.a.x)))));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1) -> Struct_4 {
    let var_0 = ~1i;
    let var_1 = ~(-vec4<i32>(9957i, select(1i, u_input.d, global2.a), i32(-1i) * -27566i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.x, 0i), vec2<i32>(u_input.d, var_0)))) << (vec4<u32>(~1u, arg_0.a.x, func_3(), _wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, ~arg_1.c), u_input.b.x)) % vec4<u32>(32u));
    var var_2 = -(~global2.b.a);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(812f, 1132f, -321f, 3134f)))))) - _wgslsmith_div_vec4_f32(vec4<f32>(global2.d.b.x, _wgslsmith_f_op_f32(320f - global2.b.b.x), -629f, _wgslsmith_f_op_f32(global2.d.b.x + _wgslsmith_f_op_f32(-1000f * global2.c.b.x))), global2.d.b));
    global3 = array<bool, 32>();
    return arg_0;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = func_2(Struct_4(global0.a, select(vec2<bool>(true, false), !select(global1[_wgslsmith_index_u32(arg_0.x, 13u)], global1[_wgslsmith_index_u32(32332u, 13u)], global2.a), arg_2.xy), !select(vec2<bool>(global2.a, global0.b.x), select(global0.b, global1[_wgslsmith_index_u32(4294967295u, 13u)], arg_1.e.a), !arg_2.zw)), arg_1.a.b);
    global3 = array<bool, 32>();
    let var_1 = Struct_2(all(vec3<bool>((40952u | arg_1.a.e) <= reverseBits(u_input.c.x), var_0.c.x, !func_2(Struct_4(vec3<u32>(u_input.e, arg_0.x, global0.a.x), var_0.c, vec2<bool>(global2.a, global2.a)), Struct_1(vec2<i32>(global2.b.a.x, -5650i), vec4<f32>(arg_1.e.d.b.x, -1802f, arg_1.e.d.b.x, -531f), 1u, arg_1.e.d.d)).b.x)), global2.c, Struct_1(~abs(vec2<i32>(u_input.d, 18401i)), _wgslsmith_f_op_vec4_f32(-global2.d.b), ~(75251u & _wgslsmith_mult_u32(var_0.a.x, arg_0.x)), reverseBits(vec3<u32>(~u_input.e, arg_1.d, arg_1.b.x))), arg_1.a.c, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(37850u, arg_0.x, 0u), _wgslsmith_mult_vec3_u32(global0.a, vec3<u32>(arg_0.x, global2.b.d.x, 4294967295u)))) ^ 106349u);
    var var_2 = !(!(any(arg_2) | (true | !global3[_wgslsmith_index_u32(global0.a.x, 32u)])));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b.b.x, 485f) * _wgslsmith_f_op_f32(-arg_1.e.b.b.x));
    return vec4<bool>(select(all(var_0.b), arg_2.x, var_1.a), -2515f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1061f, 780f)))), false, arg_2.x && all(vec2<bool>(!arg_2.x, true)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = global2.d;
    let var_1 = Struct_2((false == all(func_1(vec4<u32>(18301u, arg_2.x, global2.e, global0.a.x), Struct_5(Struct_2(arg_1.x, Struct_1(vec2<i32>(global2.b.a.x, 2147483647i), vec4<f32>(var_0.b.x, var_0.b.x, global2.d.b.x, 334f), arg_2.x, vec3<u32>(4294967295u, global0.a.x, 0u)), Struct_1(vec2<i32>(var_0.a.x, 0i), global2.d.b, 47041u, global2.c.d), global2.d, 1u), vec4<u32>(u_input.b.x, 0u, 77943u, global2.b.d.x), vec4<f32>(906f, -309f, global2.b.b.x, var_0.b.x), 46835u, Struct_2(global3[_wgslsmith_index_u32(45239u, 32u)], global2.b, Struct_1(global2.b.a, var_0.b, 29572u, vec3<u32>(arg_2.x, global0.a.x, global0.a.x)), Struct_1(vec2<i32>(u_input.d, global2.c.a.x), vec4<f32>(global2.b.b.x, 434f, 845f, global2.d.b.x), 4294967295u, u_input.b), global0.a.x)), vec4<bool>(true, true, false, false)).xyy)) | select(all(arg_1.zy), all(!vec3<bool>(true, global2.a, global0.c.x)), !func_1(vec4<u32>(global0.a.x, var_0.c, 79627u, 49205u), Struct_5(Struct_2(global2.a, global2.c, Struct_1(arg_0.zz, vec4<f32>(global2.b.b.x, var_0.b.x, -808f, var_0.b.x), u_input.c.x, vec3<u32>(115459u, global2.b.d.x, 29940u)), Struct_1(global2.c.a, var_0.b, arg_2.x, var_0.d), 39181u), arg_2, vec4<f32>(-298f, 415f, global2.c.b.x, -428f), arg_2.x, Struct_2(true, Struct_1(global2.d.a, vec4<f32>(var_0.b.x, global2.c.b.x, var_0.b.x, global2.c.b.x), 4294967295u, global2.b.d), global2.b, global2.b, 21742u)), vec4<bool>(false, true, true, true)).x), global2.d, Struct_1(max(reverseBits(~var_0.a), ~(global2.d.a << (vec2<u32>(arg_2.x, 28238u) % vec2<u32>(32u)))), var_0.b, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(9849u, 19861u, global2.b.c), vec3<u32>(global2.e, global0.a.x, 0u)), 1u) | arg_2.x, global2.b.d), Struct_1(max(arg_0.zy, vec2<i32>(firstLeadingBit(global2.c.a.x), abs(-23645i))), var_0.b, 1u, ~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.d.x, 1u, 4294967295u), arg_2.wyz) >> (vec3<u32>(arg_2.x | 48243u, _wgslsmith_mod_u32(global0.a.x, 28405u), _wgslsmith_sub_u32(var_0.d.x, 87240u)) % vec3<u32>(32u))), 1u);
    global0 = Struct_4(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global0.a.x, 1u), global2.c.d >> (vec3<u32>(30464u, var_1.d.d.x, 0u) % vec3<u32>(32u)), var_1.d.d >> (u_input.b % vec3<u32>(32u))) ^ global0.a), !global1[_wgslsmith_index_u32(reverseBits(var_0.c), 13u)], vec2<bool>(true, any(global0.c)));
    global1 = array<vec2<bool>, 13>();
    global1 = array<vec2<bool>, 13>();
    return Struct_3(-437f, var_1.b, Struct_2(false, Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b.b + var_1.b.b)), 1u, arg_2.xyy), var_1.c, Struct_1(var_1.d.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1742f, var_0.b.x, global2.c.b.x, -1011f)))), arg_2.x, ~vec3<u32>(global2.e, 31824u, var_1.d.c)), var_1.c.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(11181i, -1i, u_input.d), vec3<i32>(global2.b.a.x, u_input.d, u_input.d))), vec3<bool>(false, !(_wgslsmith_f_op_f32(step(1000f, -314f)) > _wgslsmith_f_op_f32(-1517f * global2.b.b.x)), any(!func_1(vec4<u32>(98897u, 1u, global2.b.c, global0.a.x), Struct_5(Struct_2(global2.a, global2.b, global2.b, global2.d, global2.b.d.x), vec4<u32>(global0.a.x, 0u, 92718u, 27096u), global2.d.b, 45640u, Struct_2(false, Struct_1(vec2<i32>(u_input.d, 2147483647i), vec4<f32>(global2.d.b.x, global2.d.b.x, 290f, global2.d.b.x), 4294967295u, vec3<u32>(u_input.c.x, 1u, global2.b.d.x)), Struct_1(global2.c.a, vec4<f32>(819f, global2.d.b.x, global2.b.b.x, -973f), 24913u, vec3<u32>(44725u, 95369u, 69312u)), Struct_1(global2.b.a, global2.c.b, 4294967295u, vec3<u32>(u_input.b.x, 1u, 1u)), 61875u)), vec4<bool>(false, global0.b.x, false, global2.a)))), vec4<u32>(reverseBits(u_input.b.x), 4294967295u & global2.b.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 58407u, u_input.e), ~vec4<u32>(global2.c.c, global2.e, 4294967295u, u_input.e)) & (_wgslsmith_dot_vec4_u32(vec4<u32>(16617u, global2.c.d.x, u_input.b.x, u_input.c.x), vec4<u32>(4294967295u, 0u, u_input.c.x, u_input.b.x)) | ~global2.c.c), 13709u));
    var var_1 = countOneBits(-_wgslsmith_dot_vec3_i32(~(vec3<i32>(-35241i, global2.d.a.x, -75248i) | vec3<i32>(var_0.c.d.a.x, var_0.b.a.x, 20262i)), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(1i, 31280i, 9003i)), -vec3<i32>(18786i, -12834i, -1i))));
    var var_2 = select(-(-vec4<i32>(-16918i, var_0.c.c.a.x, var_0.b.a.x, 0i) & ~vec4<i32>(2147483647i, 18612i, u_input.d, 2147483647i)), ~vec4<i32>(-global2.d.a.x, -2147483647i, -2147483647i, -global2.d.a.x), func_1(select(vec4<u32>(3516u, 11905u, var_0.c.d.d.x, var_0.c.b.c), vec4<u32>(7838u, u_input.a, 108933u, global0.a.x), vec4<bool>(false, global0.b.x, false, true)), Struct_5(func_4(vec3<i32>(-8736i, u_input.d, var_0.c.b.a.x), vec3<bool>(global2.a, true, false), vec4<u32>(40432u, 71994u, var_0.c.e, u_input.a)).c, vec4<u32>(1u, global2.b.d.x, 26454u, u_input.e) & vec4<u32>(var_0.b.c, u_input.a, var_0.c.e, u_input.b.x), vec4<f32>(global2.c.b.x, var_0.a, var_0.c.c.b.x, 1034f), var_0.c.c.c, Struct_2(global3[_wgslsmith_index_u32(u_input.e, 32u)], Struct_1(var_0.c.b.a, vec4<f32>(var_0.c.d.b.x, 352f, var_0.c.b.b.x, 1385f), 1u, global0.a), global2.b, Struct_1(var_0.b.a, global2.c.b, 1u, vec3<u32>(global0.a.x, 4294967295u, global2.d.c)), var_0.b.d.x)), select(!vec4<bool>(global2.a, var_0.c.a, true, var_0.c.a), select(vec4<bool>(global3[_wgslsmith_index_u32(global0.a.x, 32u)], true, true, global0.c.x), vec4<bool>(global2.a, global3[_wgslsmith_index_u32(17237u, 32u)], global0.b.x, true), vec4<bool>(true, true, global3[_wgslsmith_index_u32(global2.b.d.x, 32u)], global3[_wgslsmith_index_u32(77967u, 32u)])), global3[_wgslsmith_index_u32(1u, 32u)]))) | select(select(abs(select(vec4<i32>(-32046i, -1i, -2147483647i, 37699i), vec4<i32>(0i, 18341i, 0i, var_0.b.a.x), true)), vec4<i32>(global2.c.a.x, ~global2.d.a.x, u_input.d, 1i), select(!global0.b.x, global2.a & true, global3[_wgslsmith_index_u32(global2.c.c, 32u)])), ~(-(vec4<i32>(-2147483647i, global2.c.a.x, 34316i, 56146i) >> (vec4<u32>(1u, global0.a.x, 4294967295u, 0u) % vec4<u32>(32u)))), select(vec4<bool>(true, func_4(vec3<i32>(1i, u_input.d, u_input.d), vec3<bool>(true, true, true), vec4<u32>(4294967295u, var_0.c.b.c, 0u, 1u)).c.a, all(vec3<bool>(false, var_0.c.a, false)), false && global0.c.x), !select(vec4<bool>(global0.c.x, global0.c.x, global0.c.x, false), vec4<bool>(var_0.c.a, var_0.c.a, true, true), vec4<bool>(global0.c.x, true, global3[_wgslsmith_index_u32(global2.c.c, 32u)], global2.a)), select(vec4<bool>(true, global0.c.x, true, false), select(vec4<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 32u)], true, global3[_wgslsmith_index_u32(62702u, 32u)]), vec4<bool>(global3[_wgslsmith_index_u32(global2.e, 32u)], global2.a, true, false), global2.a), vec4<bool>(global0.c.x, global0.b.x, false, true))));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1024f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1742f), global2.d.b.x))), global2.d.b.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-126f + -217f)), _wgslsmith_f_op_f32(global2.c.b.x - var_0.a), -613f), vec3<f32>(_wgslsmith_div_f32(-532f, -724f), -850f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -440f))), vec3<bool>(true, true, true)))));
    var_2 = vec4<i32>(func_4(var_2.xwz, select(!vec3<bool>(global2.a, true, true), !vec3<bool>(global2.a, global0.b.x, false), !vec3<bool>(true, var_0.c.a, var_0.c.a)), vec4<u32>(global0.a.x, 1u, 36706u, ~u_input.e)).c.d.a.x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(func_4(vec3<i32>(22798i, 2147483647i, 0i), vec3<bool>(global3[_wgslsmith_index_u32(global0.a.x, 32u)], true, global0.c.x), vec4<u32>(global2.b.d.x, global2.d.c, 105366u, 4294967295u)).c.b.a.x, ~global2.b.a.x), min(49859i, 0i), var_2.x), ~firstTrailingBit(var_2.x), global2.d.a.x) << (~vec4<u32>(firstTrailingBit(u_input.a), func_4(var_2.wwy, !vec3<bool>(global3[_wgslsmith_index_u32(6153u, 32u)], false, var_0.c.a), max(vec4<u32>(global2.b.c, 4294967295u, 20211u, 1020u), vec4<u32>(38981u, 4294967295u, global2.b.d.x, global2.b.c))).b.d.x, ~global2.b.d.x | ~1u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(global0.a.x, 4294967295u)), vec2<u32>(20079u, 0u))) % vec4<u32>(32u));
    var var_4 = global2.d.d;
    var var_5 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, _wgslsmith_div_f32(_wgslsmith_div_f32(global2.d.b.x, 1000f), _wgslsmith_f_op_f32(ceil(-936f))), -1907f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1208f))))), _wgslsmith_f_op_vec4_f32(-func_4(~vec3<i32>(var_2.x, global2.b.a.x, -2147483647i), vec3<bool>(false, false, false), _wgslsmith_div_vec4_u32(vec4<u32>(var_4.x, u_input.a, 23773u, u_input.a), vec4<u32>(0u, var_0.b.c, global2.b.c, var_4.x))).c.b.b)), vec4<i32>(i32(-1i) * -(~u_input.d), reverseBits(2147483647i | (-2147483647i << (global2.b.d.x % 32u))), var_2.x, u_input.d), ~vec4<i32>(-var_2.x, -min(var_2.x, 23346i), var_2.x, 61603i), ~(-select(3777i, 23397i, true)) | countOneBits(u_input.d));
}

