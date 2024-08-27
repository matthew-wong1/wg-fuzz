struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: array<Struct_1, 3>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    var var_0 = 48744u;
    var_0 = _wgslsmith_div_u32(~min(~4294967295u, _wgslsmith_add_u32(26058u, countOneBits(u_input.a.x))), abs(u_input.a.x));
    var var_1 = Struct_2(vec4<u32>(countOneBits(~(~28715u)), ~u_input.a.x, u_input.a.x, ~29997u), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 4294967295u) & (u_input.a.x << (1u % 32u)), 3u)], global1[_wgslsmith_index_u32(36763u, 3u)], Struct_1(_wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, 23521u, 0u)), select(u_input.a, u_input.a, false))), ~firstLeadingBit(reverseBits(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)))));
    var var_2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x << (~1u % 32u), 9u)]);
    let var_3 = global1[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(var_1.c.a, var_1.a.x)), 3u)];
    return !select(!(!vec2<bool>(arg_0, arg_0)), select(vec2<bool>(true, true), !vec2<bool>(false, arg_0), !(!vec2<bool>(arg_0, arg_0))), !vec2<bool>(all(vec3<bool>(arg_0, arg_0, true)), select(false, true, arg_0)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: u32) -> vec2<f32> {
    var var_0 = select(!select(arg_0, !vec2<bool>(false, arg_1.x), arg_0.x), select(func_3(all(vec2<bool>(arg_1.x, arg_0.x))), !(!select(arg_0, arg_1.yw, vec2<bool>(false, false))), ((u_input.a.x ^ 66507u) >> (u_input.a.x % 32u)) == firstLeadingBit(~arg_3)), select(select(arg_1.wz, arg_0, !arg_0.x), arg_1.zz, vec2<bool>(!(arg_1.x || false), arg_0.x)));
    global1 = array<Struct_1, 3>();
    global0 = array<f32, 9>();
    let var_1 = arg_1.x;
    global0 = array<f32, 9>();
    return vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1058f + global0[_wgslsmith_index_u32(45665u, 9u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.b.x), -1431f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(3486u, u_input.a.x), 9u)])) + -2202f));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = true;
    global0 = array<f32, 9>();
    let var_1 = Struct_3(vec3<i32>(_wgslsmith_div_i32(u_input.b, 1i << ((0u ^ u_input.a.x) % 32u)), 2147483647i, 2147483647i), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(65973u, 9u)]), vec2<f32>(global0[_wgslsmith_index_u32(46018u, 9u)], -1068f), true)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_2(vec2<bool>(false, false), vec4<bool>(false, true, true, false), Struct_3(vec3<i32>(-1i, u_input.b, u_input.b), vec2<f32>(global0[_wgslsmith_index_u32(52788u, 9u)], -975f)), 1u)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(364f, global0[_wgslsmith_index_u32(arg_2.b.x, 9u)])))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2397f, global0[_wgslsmith_index_u32(0u, 9u)]))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(1u, 9u)]), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0[_wgslsmith_index_u32(arg_1.x, 9u)], global0[_wgslsmith_index_u32(arg_0, 9u)]))))))))));
    let var_2 = any(!(!vec4<bool>(true, true, true, u_input.b > u_input.b)));
    var var_3 = vec4<u32>(4294967295u, arg_2.b.x, select(reverseBits(_wgslsmith_sub_u32(arg_1.x, _wgslsmith_dot_vec3_u32(arg_2.b.zzy, vec3<u32>(arg_1.x, 4294967295u, arg_1.x)))), _wgslsmith_mult_u32(1u, ~0u) >> (_wgslsmith_mult_u32(countOneBits(19451u), arg_0 | 28165u) % 32u), !var_2), 4294967295u);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1837f, 306f, -728f), vec3<f32>(1189f, 1091f, -478f))) - vec3<f32>(-1307f, var_1.b.x, -445f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.b.x, 901f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1014f, 359f, global0[_wgslsmith_index_u32(arg_0, 9u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 9u)], var_1.b.x, 339f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-444f, -343f, var_1.b.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), -551f, -1479f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1970f, var_1.b.x, 749f), vec3<f32>(1000f, 465f, var_1.b.x), vec3<bool>(true, false, true))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-398f, 866f, 1000f) - vec3<f32>(-1861f, var_1.b.x, 863f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = ~(-vec2<i32>(countOneBits(i32(-1i) * -2147483647i), -16467i));
    global0 = array<f32, 9>();
    var_0 = 1i;
    var_0 = var_1.x >> (0u % 32u);
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 9u)], -1812f, global0[_wgslsmith_index_u32(u_input.a.x, 9u)]) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(47010u, 9u)], -1034f), vec3<f32>(-2162f, -732f, 616f))))), _wgslsmith_f_op_vec3_f32(func_1(u_input.a.x, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 23264u, u_input.a.x), vec3<u32>(u_input.a.x, 1u, 4294967295u)), global1[_wgslsmith_index_u32(4294967295u, 3u)]))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(max(u_input.a.x, 49256u), u_input.a, Struct_1(u_input.a.x, vec4<u32>(u_input.a.x, 6604u, 0u, 13950u)))))));
    var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_2.x) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], -1000f, 1603f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(43529u, vec3<u32>(48329u, 35032u, u_input.a.x), global1[_wgslsmith_index_u32(16784u, 3u)])), vec3<f32>(456f, var_2.x, -1094f)))))));
    let var_3 = Struct_3(vec3<i32>(1i, 1i, u_input.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_1(0u, vec3<u32>(0u, u_input.a.x, 112278u), global1[_wgslsmith_index_u32(u_input.a.x, 3u)])).x, _wgslsmith_f_op_f32(var_2.x + 554f))), _wgslsmith_f_op_f32(f32(-1f) * -1744f))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~firstTrailingBit(vec2<i32>(-1i, -60296i))), _wgslsmith_f_op_f32(f32(-1f) * -857f), _wgslsmith_clamp_i32(var_1.x ^ (i32(-1i) * -13559i), var_3.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, var_3.a.x), abs(var_3.a.zy)), -vec2<i32>(0i, u_input.b))));
}

