struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1134f;

var<private> global1: array<Struct_1, 16>;

var<private> global2: array<Struct_1, 16>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.c))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    return ~vec2<u32>(~(~u_input.c.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x), ~vec4<u32>(5045u, u_input.a.x, 105055u, 73042u)));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 16u)];
    let var_1 = ~u_input.b;
    let var_2 = 36887i;
    let var_3 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.x - arg_3.b.x), 663f))), vec3<f32>(-989f, 367f, -163f), 626f, 20144i), Struct_1(518f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.x - 428f)), _wgslsmith_add_i32(~arg_3.d, arg_3.d)), Struct_1(1000f, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(-929f, vec3<f32>(var_0.b.x, 132f, -191f), arg_3.a, 2147483647i), max(vec3<i32>(2147483647i, -1692i, -27238i), vec3<i32>(u_input.b, arg_3.d, var_1)), arg_0, Struct_1(402f, var_0.b, 1872f, u_input.b)))), _wgslsmith_div_i32(var_0.d, var_2)));
    global0 = arg_3.c;
    return !select(select(select(vec3<bool>(arg_1, arg_1, true), !vec3<bool>(arg_1, false, false), !vec3<bool>(true, arg_1, arg_1)), vec3<bool>(!arg_1, !arg_1, arg_1), any(!vec3<bool>(arg_1, arg_1, arg_1))), !select(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(true, true, true), false), vec3<bool>(arg_1, arg_1, true), all(vec2<bool>(true, arg_1))), all(select(vec4<bool>(false, true, arg_1, false), select(vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(arg_1, arg_1, false, arg_1), true), select(vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(true, arg_1, true, false), vec4<bool>(arg_1, arg_1, arg_1, false)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = !select(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), func_2(u_input.c.x & u_input.a.x, true, _wgslsmith_f_op_vec2_f32(-arg_0.b.yy), arg_1)), select(vec3<bool>(true, true, true), vec3<bool>(true, u_input.a.x == 0u, true), vec3<bool>(true, true, true)), reverseBits(firstTrailingBit(-22075i)) < (u_input.b >> (73026u % 32u)));
    var var_1 = _wgslsmith_mod_vec2_u32(u_input.c, firstTrailingBit(~u_input.a));
    var var_2 = vec3<i32>(reverseBits(reverseBits(arg_0.d) << (4294967295u % 32u)), i32(-1i) * -60607i, arg_0.d) & _wgslsmith_sub_vec3_i32(abs(vec3<i32>(_wgslsmith_mod_i32(34307i, -14779i), 55770i, 1i)), vec3<i32>(_wgslsmith_add_i32(0i, ~arg_1.d), abs(i32(-1i) * -27427i), -16433i));
    var var_3 = var_1.x;
    var_0 = vec3<bool>(all(!(!select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, true), var_0.yy))), all(select(vec4<bool>(var_0.x == false, any(vec3<bool>(false, var_0.x, var_0.x)), var_0.x, true), !select(vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, false), true), vec4<bool>(false, true, true, true))), true);
    return _wgslsmith_div_i32(var_2.x, (abs(countOneBits(1i)) & ~(-arg_1.d)) & reverseBits(_wgslsmith_add_i32(arg_0.d, arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(-reverseBits(vec2<i32>(-1i, u_input.b) >> (u_input.c % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(24322i, u_input.b) >> (~vec2<u32>(u_input.c.x, 57054u) % vec2<u32>(32u)))), select(_wgslsmith_div_vec2_i32(~vec2<i32>(71179i, u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), -vec2<i32>(u_input.b, u_input.b))), select(_wgslsmith_div_vec2_i32(vec2<i32>(15001i, u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(-47270i, u_input.b), vec2<i32>(u_input.b, u_input.b))), select(vec2<i32>(2147483647i, u_input.b), -vec2<i32>(20893i, -5778i), true), false), true));
    let var_1 = global1[_wgslsmith_index_u32(u_input.c.x, 16u)];
    var var_2 = _wgslsmith_mod_vec3_i32(~vec3<i32>(var_1.d, -1i, reverseBits(_wgslsmith_sub_i32(-2147483647i, 0i))), ~max(select(_wgslsmith_mult_vec3_i32(vec3<i32>(35073i, var_1.d, -11397i), vec3<i32>(var_0.x, u_input.b, -2147483647i)), -vec3<i32>(14228i, u_input.b, u_input.b), all(vec2<bool>(false, true))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, var_1.d, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 0i, var_0.x), vec3<i32>(var_1.d, var_1.d, -42104i)), ~vec3<i32>(var_1.d, -36589i, var_1.d))));
    var_0 = max(_wgslsmith_add_vec2_i32(select(~vec2<i32>(var_0.x, 52499i), var_2.yz, any(vec3<bool>(false, false, true)) & all(vec2<bool>(false, true))), max(-var_2.zy << (abs(u_input.a) % vec2<u32>(32u)), var_2.zx)), var_2.xz);
    var var_3 = vec2<bool>(true, true);
    let var_4 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec4_i32(-abs(vec4<i32>(var_2.x, -2147483647i, u_input.b, var_2.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, var_2.x, 2147483647i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, var_1.d, -2147483647i, var_0.x), vec4<i32>(var_1.d, var_2.x, var_1.d, var_1.d)))), func_1(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1359f), _wgslsmith_f_op_vec3_f32(max(var_1.b, vec3<f32>(-868f, -1483f, var_1.b.x))), _wgslsmith_div_f32(2108f, -254f), var_1.d), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(1u, 0u, u_input.a.x))), 16u)])), abs(select(~firstLeadingBit(u_input.c.x), countOneBits(4294967295u), !any(vec3<bool>(true, var_3.x, true)))), ~firstTrailingBit(vec3<u32>(firstLeadingBit(18701u), ~48340u, u_input.c.x)));
}

