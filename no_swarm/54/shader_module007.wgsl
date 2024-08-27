struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(15775u, 0u, 32486u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>) -> vec4<u32> {
    let var_0 = true;
    var var_1 = -23198i;
    var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_div_i32(max(-1i, arg_0.c.x), firstLeadingBit(-35440i)), arg_2.x) ^ vec3<i32>(~(-arg_2.x), arg_2.x, _wgslsmith_mod_i32(~arg_2.x, _wgslsmith_clamp_i32(arg_0.c.x, arg_2.x, 2147483647i))), vec3<i32>(arg_2.x, _wgslsmith_add_i32(arg_2.x, arg_2.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_0.c, _wgslsmith_div_vec3_i32(vec3<i32>(47587i, -2147483647i, -2147483647i), vec3<i32>(arg_2.x, -3371i, 2147483647i))), ~72821i)));
    let var_2 = vec3<u32>(firstLeadingBit(abs(global0[_wgslsmith_index_u32(~1u, 3u)])), arg_1, 17143u);
    let var_3 = 46893i;
    return _wgslsmith_mult_vec4_u32(max(abs(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13606u, 3u)], 3u)], 4294967295u, arg_1, 12616u)) >> ((vec4<u32>(1u, arg_1, 0u, 12898u) << (vec4<u32>(global0[_wgslsmith_index_u32(27544u, 3u)], 11444u, 1u, 48398u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(47901u, _wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(u_input.a, 3u)]), countOneBits(arg_1), abs(42041u))), _wgslsmith_mult_vec4_u32(~(vec4<u32>(54527u, global0[_wgslsmith_index_u32(1u, 3u)], u_input.a, 1u) << (vec4<u32>(u_input.a, u_input.c, var_2.x, 51834u) % vec4<u32>(32u))), ~vec4<u32>(25562u, 81868u, 1u, 23928u) >> (~vec4<u32>(0u, 79852u, 4294967295u, u_input.b) % vec4<u32>(32u)))) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 1u, 16636u, abs(u_input.b)), vec4<u32>(arg_1, _wgslsmith_dot_vec3_u32(var_2, vec3<u32>(var_2.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], arg_1)), var_2.x, global0[_wgslsmith_index_u32(1u | _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(15209u, 3u)], 4294967295u), 3u)])) % vec4<u32>(32u));
}

fn func_2(arg_0: i32) -> vec4<u32> {
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    let var_0 = Struct_1(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-482f, -207f, -248f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-835f, -330f, 649f) + vec3<f32>(382f, -1905f, 1606f))))), vec3<i32>(_wgslsmith_div_i32(arg_0, ~(-33851i)), -24568i, arg_0));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.b, 3560u)), ~(~vec2<u32>(29442u, 4294967295u)));
    return ~_wgslsmith_add_vec4_u32(~vec4<u32>(~global0[_wgslsmith_index_u32(58182u, 3u)], 0u, ~0u, 4294967295u), _wgslsmith_mult_vec4_u32(func_3(Struct_1(var_0.a, var_0.b, var_0.c), 1u, _wgslsmith_clamp_vec3_i32(var_0.c, vec3<i32>(43834i, -28245i, -9957i), vec3<i32>(arg_0, var_1, arg_0))), ~select(vec4<u32>(1u, 0u, 0u, 4294967295u), vec4<u32>(56085u, u_input.c, 4294967295u, 27052u), vec4<bool>(true, false, var_0.a, true))));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = ~func_2(abs(-15434i)) & (~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(81505u, u_input.a, global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(0u, 3u)]), vec4<u32>(50979u, 0u, global0[_wgslsmith_index_u32(u_input.a, 3u)], 0u))) << (~(~vec4<u32>(28595u, 1u, global0[_wgslsmith_index_u32(u_input.b, 3u)], u_input.c) >> (vec4<u32>(0u, 4294967295u, u_input.a, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    var var_1 = _wgslsmith_mod_u32(~1u, 4294967295u);
    var var_2 = Struct_1(true, vec3<f32>(-907f, _wgslsmith_f_op_f32(f32(-1f) * -697f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-921f)), 648f)), _wgslsmith_f_op_f32(sign(-126f)))), -_wgslsmith_add_vec3_i32(-vec3<i32>(1i, 1i, 1i), ~firstTrailingBit(vec3<i32>(1i, -43196i, -1i))));
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 3>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_1(~u_input.a)), _wgslsmith_f_op_f32(-763f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-858f)), -1000f) - -1025f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(965f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-831f, 716f))))))), _wgslsmith_f_op_f32(sign(1f)));
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    var var_1 = Struct_1(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-var_0.yxx), ~vec3<i32>(2147483647i, _wgslsmith_mod_i32(i32(-1i) * -6230i, 1i), _wgslsmith_div_i32(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, -20585i, 62482i), vec4<i32>(-76703i, 2147483647i, 1i, 3602i)))));
    let var_2 = 2147483647i;
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1836f + _wgslsmith_f_op_f32(f32(-1f) * -636f)) + _wgslsmith_f_op_f32(ceil(var_0.x))) > _wgslsmith_f_op_f32(func_1(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.b, 3u)], firstLeadingBit(u_input.c)))), var_1.b, vec3<i32>(abs(-2147483647i), -firstLeadingBit(-33669i | var_1.c.x), -var_2));
    var_1 = Struct_1(true, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(892f, _wgslsmith_f_op_f32(var_1.b.x + var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x + var_0.x) - var_1.b.x)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(var_0.x + -229f))), var_1.c >> ((vec3<u32>(7270u, ~u_input.a, _wgslsmith_mult_u32(4294967295u, 1u)) | countOneBits(vec3<u32>(36736u, 4294967295u, 4294967295u))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_1.c.x, 0i), vec3<u32>(~firstTrailingBit(0u), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 3u)], 1u), _wgslsmith_mod_u32(reverseBits(_wgslsmith_div_u32(38704u, u_input.c)), ~1u)), var_2 << (~(~35321u) % 32u));
}

