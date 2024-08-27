struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: f32) -> u32 {
    let var_0 = true == !arg_1.x;
    var var_1 = abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 29594u, u_input.a, 0u), vec4<u32>(4294967295u, 7713u, u_input.a, 81716u), vec4<u32>(u_input.c, u_input.a, 0u, u_input.a) & vec4<u32>(1u, 3247u, u_input.c, 1u)) ^ min(~vec4<u32>(4294967295u, u_input.c, 1u, 90081u), ~vec4<u32>(u_input.c, 0u, u_input.c, 5499u))) ^ vec4<u32>(_wgslsmith_mult_u32(~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(48526u, u_input.a, u_input.c, u_input.c), vec4<u32>(0u, u_input.a, u_input.a, u_input.a))) << (_wgslsmith_mult_u32(34458u, firstLeadingBit(35041u)) % 32u), ~((u_input.c << (u_input.c % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(17342u, 60031u, 5067u, u_input.c), vec4<u32>(0u, u_input.c, 0u, u_input.a)) % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(4294967295u, u_input.c, 0u)), ~vec3<u32>(1u, 4294967295u, 80055u)), ~vec3<u32>(u_input.c, 0u, u_input.a)), ~abs(u_input.c ^ u_input.c));
    let var_2 = 0i << (1u % 32u);
    var_1 = vec4<u32>(~(~4294967295u), u_input.a, 1u, abs(4294967295u)) ^ ~vec4<u32>(select(1u, 0u, var_0), ~(~1u), firstTrailingBit(reverseBits(u_input.a)), var_1.x);
    var var_3 = any(select(select(global0[_wgslsmith_index_u32(~52027u, 13u)], vec2<bool>(!arg_1.x, true), vec2<bool>(arg_1.x, 1485i != var_2)), select(!global0[_wgslsmith_index_u32(72992u, 13u)], vec2<bool>(any(arg_1), any(global0[_wgslsmith_index_u32(1u, 13u)])), select(vec2<bool>(arg_1.x, arg_1.x), global0[_wgslsmith_index_u32(1903u, 13u)], any(vec4<bool>(false, false, false, false)))), arg_1.zz));
    return ~(_wgslsmith_clamp_u32(~1u, u_input.c, max(u_input.a, u_input.a) ^ var_1.x) >> (1u % 32u));
}

fn func_2(arg_0: i32) -> vec4<u32> {
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(true, -2147483647i >= ((u_input.b.x | 0i) >> (11601u % 32u))), !(!(!all(vec4<bool>(true, true, false, true)))));
    var var_1 = abs(~reverseBits(countOneBits(vec4<u32>(129693u, u_input.c, u_input.c, u_input.a) ^ vec4<u32>(u_input.a, u_input.c, u_input.c, 19637u))));
    let var_2 = firstTrailingBit(arg_0);
    var var_3 = -354f;
    var var_4 = var_1.xw;
    return _wgslsmith_sub_vec4_u32(firstTrailingBit(~vec4<u32>(var_1.x, u_input.c, var_1.x, 67551u) | vec4<u32>(var_1.x, u_input.a, var_4.x, 50010u)), vec4<u32>(var_1.x, 0u, 47196u, func_3(1211f, vec3<bool>(var_0.x, true, var_0.x), -1438f)) << (~(vec4<u32>(1u, u_input.a, 48790u, 1u) & vec4<u32>(var_1.x, 25315u, 4294967295u, 1u)) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(~u_input.a, 4294967295u), max(_wgslsmith_clamp_u32(0u, u_input.a, u_input.c), 1u)), var_4.x, var_1.x, reverseBits(firstLeadingBit(var_4.x))) % vec4<u32>(32u));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec3<bool>, arg_3: vec2<f32>) -> f32 {
    let var_0 = ~(~vec4<u32>(0u, 5546u, 0u, _wgslsmith_dot_vec4_u32(func_2(-12707i), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, arg_1, u_input.c, 5644u), vec4<u32>(u_input.c, 12892u, 0u, arg_1)))));
    var var_1 = Struct_1(firstLeadingBit(66700u & ~max(73492u, var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(256f, 1356f, arg_3.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(107f, arg_3.x, arg_3.x)))), vec3<f32>(-2035f, -647f, arg_3.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(abs(-184f)), arg_3.x, -1581f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 407f) * arg_3.x)))), arg_2);
    var var_2 = Struct_2(vec2<u32>(min(select(reverseBits(4294967295u), select(43647u, 0u, false), arg_2.x), _wgslsmith_dot_vec4_u32(var_0, ~vec4<u32>(0u, 12880u, var_0.x, 131917u))), var_0.x), var_1.d.zzw);
    var_2 = Struct_2(~vec2<u32>(_wgslsmith_mult_u32(var_0.x, ~u_input.a), _wgslsmith_sub_u32(abs(var_1.a), var_1.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(var_1.b, var_2.b)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(var_2.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -106f), _wgslsmith_f_op_f32(abs(arg_3.x))) + _wgslsmith_f_op_vec3_f32(-var_1.b))));
    let var_3 = Struct_1(arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -184f))), var_1.c.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * 247f))), 1882f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.d.x)))), _wgslsmith_f_op_vec4_f32(-var_1.d), var_1.e);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.b.x * var_1.d.x), _wgslsmith_f_op_f32(step(-1282f, var_3.d.x)))), arg_3.x))) - 125f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    let var_1 = select(!select(vec2<bool>(true, any(vec3<bool>(false, true, true))), global0[_wgslsmith_index_u32(46955u, 13u)], any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)))), select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~29626u, u_input.a, ~27343u), (vec3<u32>(u_input.c, 98554u, 17558u) & vec3<u32>(4294967295u, u_input.a, 636u)) ^ (vec3<u32>(0u, 58454u, u_input.a) & vec3<u32>(u_input.c, 60568u, u_input.c))), 13u)], !(!global0[_wgslsmith_index_u32(4294967295u, 13u)]), true), true & (false && any(vec4<bool>(false, false, false, false))));
    var_0 = u_input.d.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(941f - 477f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * _wgslsmith_f_op_f32(func_1(all(global0[_wgslsmith_index_u32(u_input.c, 13u)]), _wgslsmith_mult_u32(u_input.a, u_input.a), select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, var_1.x, var_1.x)), !vec3<bool>(false, var_1.x, true), vec3<bool>(var_1.x, false, var_1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-283f, -310f), vec2<f32>(1151f, -1952f))) - vec2<f32>(-717f, -974f))))));
    global0 = array<vec2<bool>, 13>();
    var_0 = -49420i;
    let x = u_input.a;
    s_output = StorageBuffer(~max(countOneBits(-21080i) ^ firstTrailingBit(-2147483647i), -select(-32744i, -32901i, var_1.x)), vec3<i32>(-1i) * -u_input.b.zyz, _wgslsmith_sub_vec3_u32(select(~vec3<u32>(u_input.c, u_input.a, 1u), firstLeadingBit(vec3<u32>(u_input.c, u_input.a, u_input.a)), select(!vec3<bool>(false, true, var_1.x), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, var_1.x, var_1.x)), vec3<bool>(true, true, var_1.x))), ~max(~vec3<u32>(u_input.a, u_input.c, 1u), ~vec3<u32>(4294967295u, 60450u, 73452u))), reverseBits(min(min(vec2<u32>(19118u, u_input.a), vec2<u32>(1u, 34020u)), max(vec2<u32>(u_input.c, 10856u), vec2<u32>(u_input.c, u_input.a)) >> (min(vec2<u32>(94377u, u_input.a), vec2<u32>(0u, u_input.c)) % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2, var_2, -1164f, var_2)))))))));
}

