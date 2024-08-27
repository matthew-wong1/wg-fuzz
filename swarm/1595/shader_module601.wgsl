struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-25967i, 2147483647i);

var<private> global1: Struct_2 = Struct_2(-8616i, vec3<f32>(375f, 519f, -471f));

var<private> global2: array<bool, 9>;

var<private> global3: array<f32, 10> = array<f32, 10>(-1000f, -1256f, -1321f, -1182f, 1855f, -1618f, 1000f, -429f, -242f, 479f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<i32> {
    let var_0 = 5190i;
    var var_1 = ~vec2<i32>(~global0.x, _wgslsmith_mult_i32(global1.a, 1i) ^ -1i);
    let var_2 = ~vec3<u32>(~reverseBits(49913u), max(countOneBits(4294967295u), firstLeadingBit(815u)), 1u >> (firstTrailingBit(4294967295u) % 32u)) ^ firstLeadingBit(vec3<u32>(1u, 1u, 1u));
    global1 = Struct_2(_wgslsmith_add_i32(-(i32(-1i) * -1i), countOneBits(_wgslsmith_clamp_i32(-var_0, -global1.a, ~(-16179i)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global1.b))));
    let var_3 = select(select(vec3<bool>(global2[_wgslsmith_index_u32(var_2.x, 9u)], true, var_2.x > _wgslsmith_div_u32(58262u, var_2.x)), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 9u)], false, true), vec3<bool>(any(select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 9u)], false), vec2<bool>(false, false), false)), global1.b.x > _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 10u)]), select(global2[_wgslsmith_index_u32(var_2.x, 9u)], true, global2[_wgslsmith_index_u32(1u, 9u)] | global2[_wgslsmith_index_u32(var_2.x, 9u)]))), select(select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(0u, 9u)]), select(vec3<bool>(true, global2[_wgslsmith_index_u32(24133u, 9u)], true), vec3<bool>(true, true, true), select(vec3<bool>(global2[_wgslsmith_index_u32(var_2.x, 9u)], true, false), vec3<bool>(global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(118599u, 9u)]), vec3<bool>(true, true, global2[_wgslsmith_index_u32(var_2.x, 9u)]))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_2.x, _wgslsmith_sub_u32(var_2.x, 13945u), var_2.x), 9u)]), select(select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(var_2.x, 9u)], false), vec3<bool>(true, false, global2[_wgslsmith_index_u32(var_2.x, 9u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(var_2.x, 9u)], true)), !vec3<bool>(global2[_wgslsmith_index_u32(var_2.x, 9u)], global2[_wgslsmith_index_u32(var_2.x, 9u)], global2[_wgslsmith_index_u32(1u, 9u)]), !vec3<bool>(global2[_wgslsmith_index_u32(13885u, 9u)], global2[_wgslsmith_index_u32(var_2.x, 9u)], false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), global2[_wgslsmith_index_u32(var_2.x, 9u)]), !vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)])), select(false, global3[_wgslsmith_index_u32(var_2.x, 10u)] >= global1.b.x, !any(vec2<bool>(true, true)))), vec3<bool>(true, true, true));
    return reverseBits(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, 0i), vec3<i32>(1i, ~u_input.a.x, -global0.x))) >> (~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(20159u, var_2.x, 1u), vec3<u32>(4294967295u, var_2.x, var_2.x))) % vec3<u32>(32u));
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_2(firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.a.xzw, func_3())) & (i32(-1i) * -global1.a), global1.b);
    return ~(~(~(~(~vec2<u32>(4294967295u, 42613u)))));
}

fn func_4(arg_0: vec2<u32>) -> Struct_2 {
    global2 = array<bool, 9>();
    global0 = abs(~(_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(global0.x, 4497i)), func_3().xz, u_input.a.wx) & _wgslsmith_sub_vec2_i32(reverseBits(u_input.a.xy), abs(u_input.a.zz))));
    return Struct_2(_wgslsmith_clamp_i32(max(global1.a, -u_input.a.x) & _wgslsmith_add_i32(-14858i, -global0.x), -1i, abs(_wgslsmith_sub_i32(34010i, 0i) << (arg_0.x % 32u))), vec3<f32>(global3[_wgslsmith_index_u32(arg_0.x, 10u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_0.x, 10u)] * -1101f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(529f)) + _wgslsmith_f_op_f32(global1.b.x + global3[_wgslsmith_index_u32(arg_0.x, 10u)])))));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    global1 = func_4(func_2() >> (~(~func_2()) % vec2<u32>(32u)));
    let var_0 = global1.b.x;
    var var_1 = max(((u_input.a.x | u_input.a.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(25125u, 1u, 4294967295u), vec3<u32>(22777u, 35669u, 0u)) % 32u)) >> (1u % 32u), _wgslsmith_mult_i32(~global0.x, abs(35668i)) | _wgslsmith_mult_i32(-2147483647i, global1.a)) | -_wgslsmith_dot_vec2_i32(u_input.a.wy ^ reverseBits(vec2<i32>(u_input.a.x, global0.x)), vec2<i32>(global0.x, 1i));
    var_1 = _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(~(-7271i), _wgslsmith_sub_i32(-global1.a, 1i)), _wgslsmith_clamp_i32(-1i, global1.a, -3159i)), -1i);
    let var_2 = func_4(vec2<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(29518u, 4294967295u, 21930u, 8009u)), vec4<u32>(1u, 1u, 1u, 1u)), ~26824u));
    return select(max(firstLeadingBit(firstLeadingBit(~59397u)), 2935u), func_2().x | ~(select(4294967295u, 49735u, false) >> (43885u % 32u)), true | all(select(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 9u)], arg_0.x), select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(false, false), false), select(vec2<bool>(false, true), arg_0, arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(select(!vec3<bool>(global2[_wgslsmith_index_u32(36285u, 9u)], false, false), select(vec3<bool>(global2[_wgslsmith_index_u32(10218u, 9u)], false, global2[_wgslsmith_index_u32(0u, 9u)]), vec3<bool>(global2[_wgslsmith_index_u32(84895u, 9u)], global2[_wgslsmith_index_u32(7090u, 9u)], false), global2[_wgslsmith_index_u32(27982u, 9u)]), !vec3<bool>(global2[_wgslsmith_index_u32(80128u, 9u)], global2[_wgslsmith_index_u32(30443u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)])), !(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(0u, 9u)])), global2[_wgslsmith_index_u32(func_1(!vec2<bool>(false, global2[_wgslsmith_index_u32(47371u, 9u)])), 9u)]));
    var var_1 = _wgslsmith_f_op_vec2_f32(-global1.b.zx);
    let var_2 = ~_wgslsmith_div_i32(0i, i32(-1i) * -1i);
    global1 = func_4(~vec2<u32>(1u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(94144u, 0u, 4511u, 0u)), vec4<u32>(1u, 1u, 1u, 1u))));
    var var_3 = func_4(select(vec2<u32>(1u, abs(~4294967295u)), max(vec2<u32>(4294967295u, 0u), _wgslsmith_div_vec2_u32(select(vec2<u32>(150870u, 18928u), vec2<u32>(0u, 4294967295u), var_0.xx), abs(vec2<u32>(4294967295u, 4294967295u)))), !select(var_0.zy, vec2<bool>(true, true), global2[_wgslsmith_index_u32(0u, 9u)])));
    global3 = array<f32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~_wgslsmith_div_i32(5814i, var_3.a), i32(-1i) * -_wgslsmith_mult_i32(var_3.a, var_2)));
}

