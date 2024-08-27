struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 29>;

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(Struct_1(-35510i, 1u, 1196f), Struct_1(2147483647i, 1u, 1566f), -39818i, vec3<u32>(4294967295u, 4294967295u, 4633u)), Struct_3(Struct_1(10871i, 25880u, -348f), Struct_1(0i, 44234u, -1186f), i32(-2147483648), vec3<u32>(4294967295u, 0u, 1u)), Struct_3(Struct_1(2147483647i, 1u, -211f), Struct_1(10883i, 4030u, -925f), 7944i, vec3<u32>(4294967295u, 84463u, 7855u)), Struct_3(Struct_1(-21403i, 106477u, 847f), Struct_1(43170i, 58584u, -872f), -1i, vec3<u32>(4294967295u, 49102u, 1u)), Struct_3(Struct_1(0i, 4294967295u, 1204f), Struct_1(i32(-2147483648), 44185u, -1267f), -1i, vec3<u32>(0u, 57030u, 4294967295u)), Struct_3(Struct_1(-1i, 40954u, 1084f), Struct_1(-31940i, 41367u, 291f), 15410i, vec3<u32>(0u, 8485u, 4294967295u)), Struct_3(Struct_1(-1i, 1906u, 1536f), Struct_1(1013i, 0u, -1106f), 28454i, vec3<u32>(1u, 1u, 4294967295u)), Struct_3(Struct_1(-1i, 17100u, -1048f), Struct_1(-35094i, 0u, 444f), -1i, vec3<u32>(36460u, 41674u, 79830u)), Struct_3(Struct_1(-34033i, 85930u, -412f), Struct_1(-40644i, 50791u, 768f), -42053i, vec3<u32>(54430u, 27513u, 41226u)));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<u32>) -> vec3<u32> {
    global3 = array<Struct_3, 9>();
    global2 = -_wgslsmith_add_vec4_i32(reverseBits(-vec4<i32>(0i, 0i, 1i, -14488i)), firstTrailingBit(vec4<i32>(1i, global2.x, 1i, global0.b.a))) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(arg_0, arg_0, 19242i, -14557i)), (vec4<i32>(-38404i, -1i, -30786i, arg_0) >> (u_input.e % vec4<u32>(32u))) | -(~vec4<i32>(2147483647i, -2147483647i, global2.x, -43899i)));
    global0 = global3[_wgslsmith_index_u32(abs(~global1[_wgslsmith_index_u32(~(~arg_2.x), 29u)]), 9u)];
    let var_0 = !(!arg_1.ww);
    return ~vec3<u32>(~global0.a.b, arg_2.x, ~_wgslsmith_mod_u32(1u, arg_2.x) << (~(~74634u) % 32u));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: bool) -> bool {
    global2 = _wgslsmith_clamp_vec4_i32(~((vec4<i32>(-1i) * -vec4<i32>(global0.c, -15532i, global0.a.a, u_input.b)) ^ -_wgslsmith_div_vec4_i32(vec4<i32>(-1i, global0.c, arg_1.a, u_input.b), vec4<i32>(-6684i, -34700i, -1i, u_input.b))), vec4<i32>(-38902i, _wgslsmith_mult_i32(global2.x, max(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c, -4222i, global2.x, 2147483647i), vec4<i32>(0i, 3180i, arg_1.a, global0.a.a)), 0i)), 1i, _wgslsmith_add_i32((-7741i | u_input.b) >> (arg_2.x % 32u), -7007i)), ~select(vec4<i32>(_wgslsmith_div_i32(-2147483647i, u_input.b), reverseBits(37044i), firstLeadingBit(global2.x), ~1i), vec4<i32>(global0.b.a, u_input.b, firstLeadingBit(-35553i), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, 1i), vec2<i32>(1i, global0.b.a))), !vec4<bool>(arg_3, arg_0, arg_3, false)));
    let var_0 = vec3<u32>(_wgslsmith_clamp_u32(global0.d.x, 1744u, firstLeadingBit(~_wgslsmith_dot_vec2_u32(arg_2, vec2<u32>(u_input.a, 9074u)))), u_input.d.x, arg_1.b);
    let var_1 = global0.b.c;
    var var_2 = !select(!select(select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_3), arg_0), vec2<bool>(true, true), !vec2<bool>(true, arg_3)), select(select(!vec2<bool>(arg_0, false), !vec2<bool>(arg_3, false), arg_0), !vec2<bool>(arg_3, arg_0), arg_3), arg_0);
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-737f, -1000f) + vec2<f32>(global0.b.c, global0.a.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1324f, 217f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-574f, -742f))))))));
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    var var_0 = arg_0;
    global3 = array<Struct_3, 9>();
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 23335u, arg_2.b, 16944u), vec4<u32>(46275u, arg_2.b, 58470u, 19879u))), vec4<u32>(countOneBits(55891u), 29925u, arg_2.b, firstLeadingBit(85406u))) | _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.e.zwz, func_2(global0.c, !vec4<bool>(false, true, arg_3, arg_3), vec3<u32>(u_input.c.x, arg_1.x, global0.d.x) >> (vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], arg_2.b, arg_1.x) % vec3<u32>(32u)))), ~(~_wgslsmith_div_u32(arg_2.b, global0.b.b))), 9u)];
    var var_2 = -(~select(_wgslsmith_mult_vec2_i32(global2.xy, vec2<i32>(3674i, 3892i)), global2.xy, arg_3)) << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u));
    global1 = array<u32, 29>();
    return Struct_2(arg_0 && !func_3(arg_3, global0.a, ~vec2<u32>(12543u, global1[_wgslsmith_index_u32(4294967295u, 29u)]), !arg_3), arg_2, vec2<i32>(-42897i, 0i));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = arg_1.b;
    global2 = vec4<i32>(~(-global0.c) | (-21823i | ~global0.b.a), countOneBits(abs(-arg_1.b.a)), 0i, firstTrailingBit(0i)) ^ -(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(global2.x, arg_1.b.a, arg_1.c.x, 9749i), vec4<i32>(u_input.b, 2147483647i, -35114i, arg_1.c.x), vec4<i32>(-4429i, global0.c, global2.x, var_0.a))) ^ ~(vec4<i32>(arg_1.b.a, global2.x, arg_1.c.x, 38009i) & vec4<i32>(-1i, -2147483647i, u_input.b, var_0.a)));
    let var_1 = arg_1.b;
    global0 = global3[_wgslsmith_index_u32(global0.b.b, 9u)];
    let var_2 = Struct_3(arg_1.b, Struct_1(~_wgslsmith_mod_i32(var_1.a, -2147483647i) >> ((abs(var_0.b) | (72039u & global0.d.x)) % 32u), 12034u, _wgslsmith_f_op_f32(-var_0.c)), -1i, vec3<u32>(388u, arg_1.b.b, _wgslsmith_sub_u32(~var_1.b, abs(4294967295u))));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, arg_1.b.c, var_1.c, var_1.c))) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.c, arg_1.b.c, arg_1.b.c, var_2.a.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, var_0.c, var_2.b.c, 1106f) - vec4<f32>(var_1.c, var_2.a.c, -602f, global0.a.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.c, 822f, var_0.c, var_1.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_2.a.c, var_2.a.c, arg_1.b.c) - vec4<f32>(var_0.c, 591f, -613f, -1927f)), func_3(arg_0.x, var_1, global0.d.yy, false)))), select(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, arg_1.a, arg_1.a, arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(arg_1.a, false, true, arg_0.x), vec4<bool>(false, arg_0.x, true, true))), vec4<bool>(true, arg_1.a, all(arg_0), true), arg_1.a))), ~_wgslsmith_add_vec3_i32(global2.xwy, global2.yzz) & reverseBits(~_wgslsmith_mod_vec3_i32(global2.yxx, global2.wxw)), select(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(98102u, 11467u, var_0.b, 9323u)), u_input.e), ~(vec4<u32>(3537u, arg_1.b.b, global0.a.b, global0.a.b) ^ u_input.e), 1i < var_0.a) & (vec4<u32>(~4294967295u, 37767u, arg_1.b.b | 25613u, _wgslsmith_dot_vec2_u32(var_2.d.yy, vec2<u32>(1u, 44328u))) << (u_input.e % vec4<u32>(32u))), vec2<f32>(1296f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.c * -552f)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c, _wgslsmith_f_op_f32(select(-271f, 127f, arg_0.x | false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.c + var_2.b.c)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.c, 354f)), var_0.c, _wgslsmith_f_op_f32(round(132f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(select(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, true, true, true))), vec2<bool>(false, global0.a.a != -2147483647i)), !vec2<bool>(all(vec2<bool>(true, true)), true), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), true))), func_1(true, ~(~global0.d) ^ ~u_input.e.wwy, Struct_1(_wgslsmith_dot_vec3_i32(global2.xzw, ~vec3<i32>(global0.a.a, 36143i, 1i)), max(36713u, 91794u) >> (global0.a.b % 32u), _wgslsmith_f_op_f32(trunc(global0.a.c))), true));
}

