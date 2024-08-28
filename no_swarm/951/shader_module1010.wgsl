struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-678f, 304f, -241f);

var<private> global1: Struct_1 = Struct_1(-829f);

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(-268f), Struct_1(-325f), Struct_1(-1044f), Struct_1(1278f), Struct_1(-1329f), Struct_1(1069f), Struct_1(1342f), Struct_1(-1212f), Struct_1(-1000f), Struct_1(376f), Struct_1(656f), Struct_1(-448f), Struct_1(-567f), Struct_1(-1000f), Struct_1(1399f));

var<private> global3: i32 = -1i;

var<private> global4: i32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: vec2<f32>) -> f32 {
    var var_0 = true;
    let var_1 = global2[_wgslsmith_index_u32(1u, 15u)];
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.x)) * 148f));
    let var_3 = u_input.a;
    global1 = var_2;
    return -884f;
}

fn func_2(arg_0: vec3<f32>) -> vec4<bool> {
    let var_0 = global2[_wgslsmith_index_u32(max(countOneBits(71693u), u_input.c), 15u)];
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(arg_0.zz, u_input.b.zy, global0.zx, vec2<f32>(global1.a, global1.a)))))) + -1568f));
    global3 = -u_input.b.x;
    global1 = global2[_wgslsmith_index_u32(firstLeadingBit(~u_input.c), 15u)];
    var var_2 = true;
    return vec4<bool>(true, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(21217u, u_input.a.x, u_input.c)), abs(vec3<u32>(u_input.a.x, 30900u, 0u))) > ~(~u_input.c), select(!(!any(vec3<bool>(true, false, true))), true, true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec2<bool>(false, true)), true), true)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> vec4<i32> {
    global1 = arg_0;
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(921f, _wgslsmith_f_op_f32(-269f + global0.x), arg_2.a))));
    global2 = array<Struct_1, 15>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-661f, -1000f, _wgslsmith_f_op_f32(floor(-524f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(628f))))))));
    global1 = Struct_1(-983f);
    return vec4<i32>(_wgslsmith_mod_i32(24116i, ~min(1i, u_input.b.x)), 0i, 1i & u_input.b.x, u_input.b.x) & ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, u_input.b.x, u_input.b.x), vec4<i32>(-2147483647i, -2147483647i, u_input.b.x, u_input.b.x)), select(-5352i, 41615i, var_0.x), u_input.b.x), vec4<i32>(0i, ~(-4987i), firstLeadingBit(-53775i), 27586i));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-447f + global0.x));
    var_0 = Struct_1(674f);
    let var_1 = vec2<bool>(true, true);
    var var_2 = Struct_1(970f);
    var_0 = Struct_1(901f);
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_4(select(min(-func_1(global2[_wgslsmith_index_u32(u_input.c, 15u)], vec4<f32>(global1.a, global1.a, -408f, 2055f), Struct_1(697f)), min(-vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), min(vec4<i32>(-1i, 2147483647i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -1i, 3723i)))), ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 64024i, u_input.b.x, u_input.b.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u)), -vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.b.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)))), vec4<u32>(74452u, countOneBits(u_input.a.x), u_input.a.x, abs(46044u >> (min(u_input.c, 4294967295u) % 32u))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(max(12029u, ~1u), u_input.a.x), 15u)], u_input.a.x);
    global1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-429f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a))))))));
    var var_0 = !(!(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 17016u, u_input.c), vec3<u32>(4137u, u_input.a.x, 4294967295u)) <= u_input.c) || false);
    let var_1 = !vec2<bool>(true || !select(false, false, true), !(_wgslsmith_f_op_f32(f32(-1f) * -1617f) != _wgslsmith_f_op_f32(-global0.x)));
    let var_2 = vec3<bool>(true, all(select(vec2<bool>(any(vec3<bool>(true, var_1.x, true)), all(vec4<bool>(var_1.x, true, var_1.x, false))), var_1, vec2<bool>(false, var_1.x))), false);
    global3 = -8039i;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_i32(reverseBits(abs(vec2<i32>(u_input.b.x, u_input.b.x))), vec2<i32>(-u_input.b.x, u_input.b.x)), vec3<i32>(1i, _wgslsmith_clamp_i32(u_input.b.x, -1i << (1u % 32u), i32(-1i) * -2147483647i), countOneBits(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x))) | -(u_input.b | vec3<i32>(u_input.b.x, 0i, u_input.b.x)), -(~0i));
}

