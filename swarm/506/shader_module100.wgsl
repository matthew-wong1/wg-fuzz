struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 3> = array<f32, 3>(464f, -1000f, 769f);

var<private> global2: Struct_1 = Struct_1(vec2<i32>(1i, -1i), 44209u, vec2<u32>(32703u, 0u), vec2<f32>(764f, -1047f), vec2<f32>(-260f, -651f));

var<private> global3: array<Struct_1, 27>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    return any(vec4<bool>(all(vec3<bool>(any(vec4<bool>(true, false, false, false)), true, false)), false, true, true));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_1) -> bool {
    var var_0 = arg_3;
    var var_1 = vec4<u32>(reverseBits(~arg_1), ~4294967295u, 4294967295u, arg_3.b);
    var_0 = Struct_1(vec2<i32>(-2147483647i, firstTrailingBit(arg_2.x | -18213i)), reverseBits(1u) | _wgslsmith_dot_vec3_u32(var_1.xzw, vec3<u32>(var_0.c.x | arg_1, arg_3.c.x, global2.c.x)), firstLeadingBit(var_1.yz) << (~vec2<u32>(arg_3.b, _wgslsmith_add_u32(4294967295u, global2.b)) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, arg_0.x)))), _wgslsmith_f_op_vec2_f32(var_0.e + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d * vec2<f32>(global1[_wgslsmith_index_u32(global2.c.x, 3u)], var_0.d.x)), global0.e)), true)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + var_0.d.x), _wgslsmith_f_op_f32(-510f * var_0.d.x)))))));
    var_0 = global3[_wgslsmith_index_u32(~global0.c.x, 27u)];
    var var_2 = abs(~0u & ~(53795u ^ firstTrailingBit(var_1.x)));
    return !(!func_3());
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    global0 = arg_2;
    return Struct_1(vec2<i32>(1i, arg_0.a.x), global0.c.x, global2.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d.x, global2.d.x)))), arg_0.e);
}

fn func_1() -> u32 {
    let var_0 = func_4(global3[_wgslsmith_index_u32(1u, 27u)], select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(vec2<f32>(638f, global2.e.x), 42894u, vec3<i32>(u_input.a, u_input.a, global2.a.x), global3[_wgslsmith_index_u32(global0.b, 27u)])), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), func_2(_wgslsmith_f_op_vec2_f32(-global0.d), 48499u, vec3<i32>(34392i, -1i, global2.a.x) >> (vec3<u32>(19729u, global0.c.x, 1u) % vec3<u32>(32u)), global3[_wgslsmith_index_u32(abs(4961u), 27u)])), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), global3[_wgslsmith_index_u32(~(~max(global0.c.x, 30470u)), 27u)]);
    let var_1 = select(vec3<bool>(true, false, all(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false)), vec3<bool>(func_2(global0.e, 19657u, vec3<i32>(global0.a.x, var_0.a.x, var_0.a.x), var_0), true, func_3()), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), !select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(any(vec2<bool>(false, true)), all(vec2<bool>(true, false)), true)));
    let var_2 = 391f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x - -135f) * 1000f);
    var var_3 = global0.a.x;
    let var_4 = global0.c.x;
    return min(1u, global2.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c.x;
    var var_1 = global3[_wgslsmith_index_u32(firstTrailingBit(func_1()), 27u)];
    global2 = global3[_wgslsmith_index_u32(global2.c.x, 27u)];
    let var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.c.x, var_1.c.x, global2.b) | vec3<u32>(63862u, 48458u, global2.c.x), vec3<u32>(abs(21200u), global0.c.x, _wgslsmith_clamp_u32(global2.b, global2.b, var_1.c.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(41343u, 1u, var_1.c.x), vec3<u32>(var_1.b, var_1.b, 12479u)) | countOneBits(vec3<u32>(31029u, var_1.c.x, 4294967295u))), (_wgslsmith_add_vec3_u32(vec3<u32>(0u, 22315u, 82415u), vec3<u32>(global2.c.x, global2.b, 0u)) & _wgslsmith_mod_vec3_u32(vec3<u32>(global0.b, var_1.c.x, 4294967295u), vec3<u32>(4294967295u, var_1.b, global0.b))) | vec3<u32>(~92630u, ~1u, var_1.b)), abs(vec3<u32>(4294967295u, max(global2.b, 12042u << (0u % 32u)), (global0.c.x << (global2.b % 32u)) ^ ~19669u)));
    var_1 = func_4(global3[_wgslsmith_index_u32(~firstLeadingBit(countOneBits(~25797u)), 27u)], vec2<bool>(true, true), Struct_1(~firstTrailingBit(global2.a), var_1.b >> (37596u % 32u), ~select(var_2.xy, vec2<u32>(0u, var_1.b) ^ vec2<u32>(1u, 11751u), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.d * _wgslsmith_f_op_vec2_f32(var_1.e - vec2<f32>(var_1.e.x, -315f))) * vec2<f32>(852f, _wgslsmith_f_op_f32(-var_1.e.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f + 605f), -3466f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<i32>(2147483647i, _wgslsmith_add_i32(21487i, 20897i), var_1.a.x, global2.a.x)), global2.a);
}

