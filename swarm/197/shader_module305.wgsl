struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31>;

var<private> global1: array<u32, 32> = array<u32, 32>(31951u, 12265u, 1u, 4294967295u, 4294967295u, 5506u, 54351u, 1u, 0u, 0u, 16982u, 59599u, 29319u, 41586u, 10180u, 0u, 36812u, 1u, 4294967295u, 1u, 124023u, 112715u, 6975u, 0u, 55548u, 51757u, 10275u, 36436u, 1u, 49898u, 4294967295u, 49047u);

var<private> global2: vec3<i32> = vec3<i32>(-8584i, 27062i, -11685i);

var<private> global3: vec2<u32>;

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_2) -> u32 {
    var var_0 = ~global1[_wgslsmith_index_u32(arg_1.b.x, 32u)];
    let var_1 = firstLeadingBit(arg_3.b.wzx);
    var var_2 = true;
    global4 = !arg_0.b.wz;
    global4 = !vec2<bool>(select(false, global4.x, all(select(vec3<bool>(arg_0.b.x, global4.x, false), vec3<bool>(global4.x, arg_0.b.x, true), vec3<bool>(global4.x, global4.x, arg_0.b.x)))), false);
    return arg_0.d.x;
}

fn func_4(arg_0: u32, arg_1: u32) -> u32 {
    global1 = array<u32, 32>();
    global0 = array<vec4<bool>, 31>();
    global0 = array<vec4<bool>, 31>();
    let var_0 = Struct_1(vec4<u32>(~(_wgslsmith_mult_u32(1u, arg_0) | max(69781u, global1[_wgslsmith_index_u32(1u, 32u)])), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(6286u, 1u, global1[_wgslsmith_index_u32(29119u, 32u)]), vec3<u32>(arg_1, arg_1, arg_1), vec3<u32>(44766u, arg_1, 0u)), ~vec3<u32>(0u, 1u, global3.x)) | _wgslsmith_dot_vec3_u32(~vec3<u32>(39619u, arg_0, 0u), vec3<u32>(arg_1, 0u, global3.x)), 1u, 12544u), vec4<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-678f)), 908f)) == _wgslsmith_f_op_f32(-319f + _wgslsmith_f_op_f32(-177f + 1537f)), all(vec4<bool>(!global4.x, all(vec3<bool>(global4.x, global4.x, global4.x)), true, select(false, false, global4.x))), true, false), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-642f, -1325f))))), vec3<u32>(arg_1, _wgslsmith_mod_u32(27774u, abs(4944u)) | ~arg_0, 1u));
    var var_1 = -10066i;
    return var_0.d.x;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> vec3<i32> {
    global1 = array<u32, 32>();
    global0 = array<vec4<bool>, 31>();
    var var_0 = arg_2.b.zz;
    var var_1 = _wgslsmith_f_op_f32(floor(arg_2.c));
    global3 = vec2<u32>(_wgslsmith_mod_u32(func_4(func_3(Struct_1(vec4<u32>(25633u, 34629u, arg_2.d.x, 1u), arg_2.b, arg_2.c, vec3<u32>(global1[_wgslsmith_index_u32(86612u, 32u)], 82502u, 14106u)), Struct_2(vec3<f32>(342f, 103f, -1000f), vec4<u32>(arg_2.d.x, arg_3, global3.x, 30837u), vec3<i32>(34381i, arg_0, 2147483647i)), select(vec2<i32>(-2595i, -4458i), global2.yy, false), Struct_2(vec3<f32>(1000f, 648f, 1000f), vec4<u32>(arg_3, global1[_wgslsmith_index_u32(arg_2.d.x, 32u)], arg_2.a.x, 4294967295u), vec3<i32>(u_input.a, -1i, arg_1))), firstTrailingBit(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(41599u, 32u)], arg_2.d.x, global1[_wgslsmith_index_u32(4294967295u, 32u)]))), ~0u), func_4(arg_2.a.x, ~_wgslsmith_div_u32(select(arg_2.a.x, 1u, arg_2.b.x), global3.x)));
    return vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, abs(-106957i), global2.x, countOneBits(arg_1)), -(~vec4<i32>(u_input.a, global2.x, u_input.a, -2147483647i))) >> (countOneBits(1u) % 32u), abs(-4655i), arg_0);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: i32) -> vec4<i32> {
    global2 = -_wgslsmith_mod_vec3_i32(-abs(abs(vec3<i32>(1i, u_input.a, u_input.a))), abs(func_2(i32(-1i) * -1i, ~28468i, Struct_1(vec4<u32>(arg_1, 39505u, 1u, global1[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<bool>(true, true, global4.x, global4.x), -1611f, vec3<u32>(global3.x, 62097u, 49826u)), 1u)));
    let var_0 = Struct_3(select(vec4<bool>(true, global4.x, !(global4.x && global4.x), true), vec4<bool>(!all(vec3<bool>(global4.x, global4.x, global4.x)), all(select(vec2<bool>(global4.x, global4.x), vec2<bool>(true, global4.x), global4.x)), true, any(global0[_wgslsmith_index_u32(~4294967295u, 31u)])), !(!(!global0[_wgslsmith_index_u32(13743u, 31u)]))), _wgslsmith_sub_u32(68145u, arg_1), arg_3, -min(min(select(vec4<i32>(2147483647i, -1i, arg_3, -14876i), vec4<i32>(global2.x, arg_3, 0i, u_input.a), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45894u, 32u)], 31u)]), vec4<i32>(16289i, arg_0, arg_0, 163i)), _wgslsmith_div_vec4_i32(abs(vec4<i32>(0i, 1i, -19864i, arg_0)), select(vec4<i32>(-2147483647i, arg_3, arg_3, -2147483647i), vec4<i32>(arg_3, -2147483647i, 11855i, -25712i), vec4<bool>(global4.x, true, true, global4.x)))), firstLeadingBit(~_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -14943i, 4255i, -13799i), vec4<i32>(global2.x, 1i, u_input.a, -31134i)), vec4<i32>(17659i, global2.x, 48617i, 0i))));
    var var_1 = _wgslsmith_sub_i32(0i, -13362i);
    global2 = min(vec3<i32>(max(~(-var_0.d.x), ~(-1i) >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 32u)], 32u)] % 32u)), -1i, i32(-1i) * -17979i), var_0.e.wxw);
    let var_2 = Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(~vec4<u32>(arg_1, global1[_wgslsmith_index_u32(1u, 32u)], 4294967295u, 4294967295u)), ~vec4<u32>(807u, global3.x, global3.x, var_0.b)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(0u, global3.x, 81581u, 0u), vec4<u32>(0u, global3.x, 1u, 4294967295u) >> (vec4<u32>(global3.x, global1[_wgslsmith_index_u32(48221u, 32u)], 0u, var_0.b) % vec4<u32>(32u))), vec4<u32>(113663u, 13183u, ~global3.x, global1[_wgslsmith_index_u32(arg_1 << (~arg_1 % 32u), 32u)])), vec4<bool>(var_0.a.x, true, !any(var_0.a.wz), global4.x), _wgslsmith_f_op_f32(ceil(arg_2)), _wgslsmith_div_vec3_u32(~vec3<u32>(var_0.b >> (4294967295u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(43044u, global3.x, global1[_wgslsmith_index_u32(var_0.b, 32u)], global3.x), vec4<u32>(var_0.b, global3.x, var_0.b, 66664u)), func_3(Struct_1(vec4<u32>(4294967295u, var_0.b, 0u, 1u), var_0.a, arg_2, vec3<u32>(global1[_wgslsmith_index_u32(83647u, 32u)], var_0.b, 22419u)), Struct_2(vec3<f32>(337f, arg_2, 129f), vec4<u32>(global3.x, global1[_wgslsmith_index_u32(var_0.b, 32u)], global1[_wgslsmith_index_u32(18488u, 32u)], global3.x), vec3<i32>(-16151i, global2.x, 1i)), global2.xz, Struct_2(vec3<f32>(arg_2, 262f, -1178f), vec4<u32>(arg_1, 10603u, 5634u, 13243u), vec3<i32>(0i, arg_0, arg_0)))), (_wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(arg_1, 32u)], arg_1, 127231u), vec3<u32>(global3.x, var_0.b, arg_1)) & select(vec3<u32>(arg_1, global3.x, arg_1), vec3<u32>(global3.x, 0u, 46334u), var_0.a.xzw)) & (~vec3<u32>(100944u, global1[_wgslsmith_index_u32(0u, 32u)], 21589u) << (~vec3<u32>(4294967295u, 4294967295u, global1[_wgslsmith_index_u32(38783u, 32u)]) % vec3<u32>(32u)))));
    return _wgslsmith_mod_vec4_i32(reverseBits(_wgslsmith_mod_vec4_i32(var_0.d | var_0.d, var_0.e)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, arg_3, u_input.a, var_0.d.x), min(var_0.e, vec4<i32>(2147483647i, u_input.a, global2.x, arg_0))), var_0.d)) >> (var_2.a % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = !select(global0[_wgslsmith_index_u32(~4294967295u, 31u)], !vec4<bool>(false, global1[_wgslsmith_index_u32(6632u, 32u)] < global3.x, true, any(vec2<bool>(false, global4.x))), true);
    global4 = !var_1.xw;
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(33226u, 31u)], global3.x, u_input.a, firstTrailingBit(_wgslsmith_mult_vec4_i32(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0, var_0, -21176i, global2.x), vec4<i32>(u_input.a, -1i, -4814i, 0i))), vec4<i32>(_wgslsmith_div_i32(-8074i, u_input.a), abs(global2.x), _wgslsmith_mod_i32(11490i, var_0), u_input.a))), ~_wgslsmith_div_vec4_i32(abs(reverseBits(vec4<i32>(var_0, u_input.a, -3236i, -2147483647i))), countOneBits(func_1(global2.x, 0u, 245f, 20493i))));
    var var_3 = select(!(!select(vec3<bool>(true, false, global4.x), select(var_2.a.yzx, var_2.a.yxy, false), var_2.a.yzx)), select(var_2.a.zzx, var_1.wwy, select(var_1.www, vec3<bool>(true, var_2.b >= 39824u, all(var_2.a.xw)), any(select(var_2.a.wyx, var_2.a.zxx, var_2.a.zwx)))), select(!(!vec3<bool>(false, var_1.x, global4.x)), vec3<bool>(func_2(var_0, global2.x, Struct_1(vec4<u32>(global3.x, 4294967295u, 59843u, 7941u), vec4<bool>(false, true, true, global4.x), 1000f, vec3<u32>(1u, 1u, 29719u)), 1u).x != firstTrailingBit(global2.x), all(vec3<bool>(false, true, true)), !global4.x), true));
    let var_4 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1224f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 178f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(362f * 1298f) + -1197f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(1000f, 791f)))))), vec4<u32>(1082u, func_4(0u, var_2.b), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(var_2.b, global1[_wgslsmith_index_u32(global3.x, 32u)]), 28879u), 32u)] | _wgslsmith_mult_u32(~4294967295u, abs(var_2.b)), reverseBits(~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(1u, 32u)], 19692u))), vec3<i32>(_wgslsmith_mult_i32(var_2.c, global2.x), _wgslsmith_mult_i32(reverseBits(~(-49294i)), _wgslsmith_mod_i32(-u_input.a, firstTrailingBit(u_input.a))), global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0, var_0, ~var_2.c), ~vec3<i32>(global2.x << (0u % 32u), func_2(global2.x, -2147483647i, Struct_1(vec4<u32>(10471u, 19398u, 85105u, global3.x), global0[_wgslsmith_index_u32(var_4.b.x, 31u)], var_4.a.x, var_4.b.wxy), global1[_wgslsmith_index_u32(var_2.b, 32u)]).x, -3445i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_4.a - var_4.a)) - var_4.a) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_4.a - vec3<f32>(-647f, var_4.a.x, var_4.a.x)), vec3<f32>(-432f, var_4.a.x, var_4.a.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.x, var_4.a.x, 532f) * vec3<f32>(var_4.a.x, var_4.a.x, -616f)) + var_4.a))), var_4.b.zyw, var_2.e, countOneBits(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(76758u, 34602u, var_4.b.x)), firstTrailingBit(vec3<u32>(28210u, 42349u, global3.x)))));
}

