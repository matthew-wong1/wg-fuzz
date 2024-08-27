struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(true, true, false, true));

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(false, false, true, false)), Struct_2(vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(false, false, true, false)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(false, false, true, true)), Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(true, false, false, false)));

var<private> global2: i32 = -1i;

var<private> global3: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(false, false, true, false)), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(true, true, true, false)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(true, false, false, true)), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(false, false, true, true)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(true, false, false, true)), Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(false, true, true, false)));

var<private> global4: array<bool, 24> = array<bool, 24>(true, true, false, true, false, true, true, false, false, false, false, true, true, false, false, true, false, false, false, true, false, true, true, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> u32 {
    let var_0 = vec2<f32>(1f, 1f);
    var var_1 = Struct_2(vec4<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(16462u, 38489u), vec2<u32>(4294967295u, 12011u)) >= ~1u, true, any(select(vec4<bool>(true, true, true, global0.a.x), global0.a, global4[_wgslsmith_index_u32(53113u, 24u)])) && true, global0.a.x));
    return 1u;
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_1(max(select(25283i & _wgslsmith_mod_i32(u_input.b.x, u_input.a.x), 23986i, false), u_input.a.x | ~1i), firstLeadingBit(0i));
    let var_1 = global0.a.xx;
    global3 = array<Struct_2, 23>();
    var var_2 = global1[_wgslsmith_index_u32(~max(func_3(Struct_1(-1i, u_input.b.x), countOneBits(-47064i), ~(-1i)), 1u), 24u)];
    let var_3 = 72003u;
    return 34059i;
}

fn func_1() -> Struct_2 {
    global0 = global1[_wgslsmith_index_u32(4294967295u, 24u)];
    let var_0 = ~_wgslsmith_clamp_i32(-func_2(global3[_wgslsmith_index_u32(~0u, 23u)]), firstTrailingBit(firstTrailingBit(-1i)) >> (1u % 32u), u_input.a.x & 7334i);
    global0 = Struct_2(global0.a);
    let var_1 = 1u;
    global3 = array<Struct_2, 23>();
    return global3[_wgslsmith_index_u32(13719u, 23u)];
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>) -> vec2<bool> {
    global2 = -firstTrailingBit(select(abs(u_input.b.x & -2147483647i), -u_input.b.x, false));
    let var_0 = Struct_1((i32(-1i) * -arg_2.x) & 29440i, 1i);
    global1 = array<Struct_2, 24>();
    let var_1 = firstLeadingBit(arg_2.zz);
    let var_2 = Struct_2(arg_0.a);
    return !global0.a.zy;
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: u32) -> Struct_1 {
    global4 = array<bool, 24>();
    let var_0 = u_input.a.xwx;
    global0 = Struct_2(vec4<bool>(all(func_1().a), arg_1 <= _wgslsmith_f_op_f32(max(1307f, _wgslsmith_f_op_f32(select(-148f, arg_1, true)))), global0.a.x, (arg_2 << (_wgslsmith_div_u32(1u, 10969u) % 32u)) <= _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, 80507u), ~vec2<u32>(0u, 35362u))));
    var var_1 = all(vec3<bool>(!(!(!global4[_wgslsmith_index_u32(arg_2, 24u)])), all(select(select(vec3<bool>(true, false, global4[_wgslsmith_index_u32(arg_2, 24u)]), vec3<bool>(global0.a.x, global0.a.x, true), global0.a.xyw), vec3<bool>(false, global0.a.x, global0.a.x), arg_2 != arg_2)), true));
    var var_2 = global1[_wgslsmith_index_u32(~(~(~firstTrailingBit(arg_2))), 24u)];
    return Struct_1(~_wgslsmith_sub_i32(arg_0.x, ~(-2147483647i)), -select(-9220i, ~firstTrailingBit(0i), global0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(~(~4294967295u));
    let var_1 = Struct_2(vec4<bool>(false, !global4[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0, countOneBits(0u)), 24u)], true, true));
    var var_2 = (7480i << (_wgslsmith_clamp_u32(4565u, _wgslsmith_div_u32(1u, var_0) >> (countOneBits(var_0) % 32u), 56579u) % 32u)) << (~_wgslsmith_add_u32(4294967295u, ~var_0) % 32u);
    let var_3 = func_5(select((firstLeadingBit(u_input.a.xz) | u_input.b.zx) >> (min(~vec2<u32>(19366u, 4294967295u), ~vec2<u32>(var_0, var_0)) % vec2<u32>(32u)), abs(vec2<i32>(64466i, 2147483647i) << (vec2<u32>(var_0, 0u) % vec2<u32>(32u))) | u_input.b.zz, func_4(func_1(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -591f) - -759f), _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x), countOneBits(vec3<i32>(u_input.a.x, -44093i, u_input.b.x)), u_input.a.zxw << (vec3<u32>(1u, var_0, var_0) % vec3<u32>(32u))))), -563f, var_0);
    var var_4 = func_5(_wgslsmith_clamp_vec2_i32(u_input.b.zx, _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.b.x), ~vec2<i32>(var_3.a, u_input.a.x), -vec2<i32>(0i, u_input.b.x)), firstTrailingBit(u_input.b.zx) & ~(~vec2<i32>(16883i, -1i))), -1182f, var_0);
    let var_5 = countOneBits(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(5949i, 33949i, var_3.a, 1i) & vec4<i32>(0i, var_4.b, -29079i, u_input.a.x), min(vec4<i32>(var_3.a, u_input.a.x, 36556i, 0i), vec4<i32>(u_input.a.x, -2147483647i, var_3.a, u_input.b.x))), u_input.b.x), max(firstTrailingBit(var_3.b), -_wgslsmith_sub_i32(u_input.b.x, -2147483647i)), u_input.b.x, 22907i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(1i, 0i), ~select(vec4<u32>(var_0, abs(var_0), 1u << (var_0 % 32u), countOneBits(0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(7866u, 27396u, var_0, var_0) << (vec4<u32>(var_0, 4294967295u, var_0, 1u) % vec4<u32>(32u)), vec4<u32>(var_0, 1u, var_0, var_0) & vec4<u32>(4294967295u, 4294967295u, 1u, 7567u)), !var_1.a));
}

