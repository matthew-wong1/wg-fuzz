struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_2;

var<private> global1: vec2<f32> = vec2<f32>(-266f, 364f);

var<private> global2: array<i32, 5> = array<i32, 5>(i32(-2147483648), 0i, -1i, -47301i, 0i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    return arg_1.x;
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<bool>(any(vec3<bool>(true, func_3(firstLeadingBit(vec2<i32>(global2[_wgslsmith_index_u32(global0.a.x, 5u)], -2147483647i)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), Struct_2(global0.a, Struct_1(global0.d, vec3<i32>(global0.c.b.x, -2147483647i, global0.b.a)), Struct_1(global2[_wgslsmith_index_u32(u_input.a, 5u)], vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], global0.b.b.x, 10769i)), -23200i), Struct_2(vec4<u32>(82548u, u_input.a, global0.a.x, 4294967295u), global0.c, Struct_1(global0.d, vec3<i32>(global2[_wgslsmith_index_u32(global0.a.x, 5u)], global0.d, 0i)), global2[_wgslsmith_index_u32(global0.a.x, 5u)])), true)), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x * global1.x))))));
    var var_2 = all(!vec4<bool>(all(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), false)), false, func_3(max(vec2<i32>(global0.b.a, global2[_wgslsmith_index_u32(10143u, 5u)]), global0.c.b.yy), !vec3<bool>(var_0.x, true, false), Struct_2(vec4<u32>(u_input.a, u_input.a, 0u, 94921u), global0.c, global0.c, global2[_wgslsmith_index_u32(4294967295u, 5u)]), Struct_2(global0.a, Struct_1(global0.c.a, global0.b.b), Struct_1(0i, global0.b.b), -1i)), 6754i >= _wgslsmith_add_i32(global0.b.a, global2[_wgslsmith_index_u32(global0.a.x, 5u)])));
    var var_3 = ~select(min(global0.a.ww, ~global0.a.xz), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(global0.a.zw, global0.a.yx), vec2<u32>(u_input.a, u_input.a)), !(6963i <= global0.c.a)) & abs(vec2<u32>(global0.a.x, ~u_input.a));
    var var_4 = global1.x;
    return global0.b;
}

fn func_1(arg_0: Struct_1) -> bool {
    global0 = Struct_2(vec4<u32>(27264u, _wgslsmith_dot_vec2_u32(~(~global0.a.zz), ~(global0.a.xy >> (global0.a.ww % vec2<u32>(32u)))), ~u_input.a, u_input.a), arg_0, func_2(), 1i);
    var var_0 = global0.a.zxx;
    global2 = array<i32, 5>();
    global0 = Struct_2(countOneBits(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.a.x, global0.a.x, 79165u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(4421u, 0u, global0.a.x, 1u), vec4<u32>(1u, global0.a.x, global0.a.x, u_input.a))), ~(~vec4<u32>(u_input.a, var_0.x, 0u, 4787u)))), func_2(), global0.b, min(global0.b.a, global0.b.a));
    return any(vec4<bool>(select(4294967295u != _wgslsmith_div_u32(global0.a.x, u_input.a), !all(vec4<bool>(false, false, true, false)), true), !any(vec4<bool>(false, true, true, true)) | true, true, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!select(vec4<bool>(true, true, global0.a.x < global0.a.x, true), vec4<bool>(true, all(vec3<bool>(false, false, false)), global0.c.b.x >= global0.c.a, true), (global1.x >= -250f) && func_1(Struct_1(global0.b.b.x, global0.b.b))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -631f))), _wgslsmith_f_op_f32(f32(-1f) * -339f)))));
    var var_2 = var_1.xy;
    let var_3 = (~min(global0.b.b.x | global2[_wgslsmith_index_u32(0u, 5u)], global0.d | global0.d) << (global0.a.x % 32u)) == -2147483647i;
    global0 = Struct_2(global0.a, Struct_1(_wgslsmith_add_i32(firstTrailingBit(reverseBits(-28057i)), -1i), vec3<i32>(~0i, _wgslsmith_dot_vec2_i32(-global0.b.b.xz, vec2<i32>(global0.c.a, 2147483647i) ^ global0.b.b.yz), _wgslsmith_add_i32(global2[_wgslsmith_index_u32(0u, 5u)], abs(-2880i)))), global0.b, abs(~_wgslsmith_sub_i32(_wgslsmith_mod_i32(72024i, -62344i), _wgslsmith_add_i32(global0.b.a, global0.c.a))));
    var var_4 = global0.a.x;
    var_2 = var_1.yz;
    let x = u_input.a;
    s_output = StorageBuffer(~(-select(firstLeadingBit(vec4<i32>(global2[_wgslsmith_index_u32(global0.a.x, 5u)], global0.b.a, -16i, global0.c.a)), abs(vec4<i32>(global0.b.b.x, global2[_wgslsmith_index_u32(20406u, 5u)], -1i, global0.c.a)), any(vec2<bool>(var_0, true)))), countOneBits(abs(-abs(vec2<i32>(38739i, global2[_wgslsmith_index_u32(4294967295u, 5u)])))));
}

