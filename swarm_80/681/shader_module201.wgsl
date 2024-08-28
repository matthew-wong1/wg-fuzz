struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(false, true, true, true, true, false, false, true, true, true, false, true, true, false, false, false, true);

var<private> global1: vec2<f32>;

var<private> global2: array<u32, 26>;

var<private> global3: Struct_1 = Struct_1(41476u, 804f);

var<private> global4: Struct_1 = Struct_1(1u, -2365f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(firstLeadingBit(0u), _wgslsmith_f_op_f32(f32(-1f) * -402f));
    let var_1 = any(select(vec3<bool>(!global0[_wgslsmith_index_u32(u_input.a.x | 15726u, 17u)], any(!vec4<bool>(global0[_wgslsmith_index_u32(23642u, 17u)], true, false, global0[_wgslsmith_index_u32(4294967295u, 17u)])), all(vec3<bool>(true, global0[_wgslsmith_index_u32(21767u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)]))), !select(vec3<bool>(global0[_wgslsmith_index_u32(arg_1.a, 17u)], true, global0[_wgslsmith_index_u32(1u, 17u)]), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(18682u, 17u)], true, global0[_wgslsmith_index_u32(global4.a, 17u)])), !vec3<bool>(false, any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(58244u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)])), global0[_wgslsmith_index_u32(4294967295u, 17u)] || false)));
    let var_2 = u_input.b;
    var var_3 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(-468f * _wgslsmith_f_op_f32(abs(global3.b))));
    var var_4 = Struct_1(~28781u, _wgslsmith_f_op_f32(383f + -322f));
    return arg_1.b;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(11054u, 343f), Struct_1(global2[_wgslsmith_index_u32(global4.a, 26u)], global3.b), Struct_1(global2[_wgslsmith_index_u32(global4.a, 26u)], 726f))))))) - global3.b);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global3.b)), _wgslsmith_f_op_f32(-global4.b))))));
    let var_1 = global4.a << ((28275u >> (global3.a % 32u)) % 32u);
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 17u)];
    return 631f;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(331f, -104f)))), _wgslsmith_f_op_f32(min(global4.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.b - global3.b), _wgslsmith_f_op_f32(f32(-1f) * -936f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(trunc(arg_0.b))) - _wgslsmith_f_op_f32(-arg_2.b))));
    global4 = Struct_1(~5741u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, 444f, global0[_wgslsmith_index_u32(0u, 17u)])) + _wgslsmith_f_op_f32(728f * -292f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.b, 795f)))) + global4.b));
    global2 = array<u32, 26>();
    let var_1 = select(u_input.b.xwx, arg_3.zwz, !(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], false, global0[_wgslsmith_index_u32(arg_2.a, 17u)])))));
    let var_2 = global4.b;
    return _wgslsmith_f_op_f32(floor(arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mult_u32(24673u, max(global4.a >> (_wgslsmith_mod_u32(37260u, u_input.a.x) % 32u), ~u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1221f * -460f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 26u)], global1.x), 16923i, Struct_1(0u, global3.b), vec4<i32>(19860i, u_input.c.x, 0i, -1i)))))));
    let var_1 = _wgslsmith_clamp_vec3_i32(select(firstLeadingBit(~u_input.b.zwz), u_input.b.wwz, !select(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.a, 26u)], 17u)], global0[_wgslsmith_index_u32(global3.a, 17u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(20068u, 17u)], true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.a, 26u)], 17u)]), vec3<bool>(global0[_wgslsmith_index_u32(global3.a, 17u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4.a, 26u)], 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)])), any(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 17u)], true, false)))), vec3<i32>(_wgslsmith_sub_i32(u_input.b.x & 0i, -u_input.b.x | -2147483647i), firstLeadingBit(u_input.b.x), _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, 23596i), _wgslsmith_sub_i32(u_input.c.x, 683i)) << (56092u % 32u)), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b.zyy, -(~u_input.b.zzx), ~vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), u_input.b.wxz));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0, Struct_1(global3.a, global1.x), var_0)) + var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(588f, 1860f)) * global3.b)), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), 1150f))), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1107f));
    var var_3 = Struct_1(abs(_wgslsmith_div_u32(~4294967295u, global3.a)) | firstTrailingBit(_wgslsmith_mod_u32(70640u, min(var_0.a, global2[_wgslsmith_index_u32(42218u, 26u)]))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -121f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(651f)))) * var_0.b));
    var var_4 = ~(var_1.x | -select(~u_input.c.x, -26362i, global0[_wgslsmith_index_u32(4294967295u, 17u)]));
    var var_5 = all(vec3<bool>((3543i != _wgslsmith_dot_vec2_i32(var_1.xz, vec2<i32>(var_1.x, -1i))) && !(!global0[_wgslsmith_index_u32(global4.a, 17u)]), global0[_wgslsmith_index_u32(~73747u, 17u)], false));
    var var_6 = vec4<f32>(-1187f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_dot_vec3_u32(u_input.a.zyy, vec3<u32>(19686u, var_3.a, global2[_wgslsmith_index_u32(72021u, 26u)])), _wgslsmith_f_op_f32(-var_0.b)), var_0, Struct_1(~0u, _wgslsmith_f_op_f32(min(-256f, global3.b)))))), _wgslsmith_f_op_f32(1181f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.x)) * global3.b)), var_3.b);
    var_6 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, -787f, _wgslsmith_f_op_f32(func_2()), var_0.b)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b, var_3.b, 356f, var_6.x)))))))));
    var var_7 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(global3.a, -340f), Struct_1(4294967295u, var_2.x), var_0)) + _wgslsmith_f_op_f32(min(-358f, _wgslsmith_div_f32(var_0.b, global3.b)))) - global3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~max(u_input.a, ~_wgslsmith_mult_vec4_u32(u_input.a, u_input.a)), _wgslsmith_f_op_f32(trunc(var_6.x)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_2.zw, vec2<f32>(-1446f, _wgslsmith_f_op_f32(-var_3.b))), var_2.zy));
}

