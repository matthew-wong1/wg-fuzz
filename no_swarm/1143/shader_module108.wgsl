struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(62968u, 39999u, 4294967295u), vec4<i32>(-55186i, 0i, -1i, -1i), vec2<f32>(1466f, 685f));

var<private> global1: i32 = 1i;

var<private> global2: array<vec2<u32>, 5>;

var<private> global3: array<vec2<i32>, 24>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>) -> i32 {
    global0 = Struct_1(~vec3<u32>(abs(~4294967295u), ~global0.a.x, min(_wgslsmith_sub_u32(global0.a.x, global0.a.x), _wgslsmith_mod_u32(79452u, global0.a.x))), global0.b, vec2<f32>(global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(295f))))));
    global3 = array<vec2<i32>, 24>();
    let var_0 = !(0u == ~global0.a.x);
    let var_1 = Struct_1(_wgslsmith_mod_vec3_u32(max(vec3<u32>(30930u, 64005u, ~24672u), global0.a), vec3<u32>(~(global0.a.x | global0.a.x), abs(52286u), global0.a.x)), (global0.b | vec4<i32>(25368i, ~(-1i), u_input.a, 2147483647i)) ^ vec4<i32>(~(-5286i), -global0.b.x, 1i, firstLeadingBit(u_input.b.x) >> (_wgslsmith_clamp_u32(20618u, global0.a.x, global0.a.x) % 32u)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))));
    let var_2 = var_1;
    return 0i << (~(~global0.a.x) % 32u);
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = vec3<i32>(-(~func_3(-1092f, select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), vec3<bool>(any(vec3<bool>(false, false, true)), false, (global0.c.x < 1881f) != true)), firstTrailingBit(arg_0.x));
    global2 = array<vec2<u32>, 5>();
    var_0 = vec3<i32>(global0.b.x, arg_0.x, ~(-1i));
    var_0 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(firstLeadingBit(~u_input.a), ~countOneBits(var_0.x), -45491i), _wgslsmith_sub_vec3_i32(arg_0.wwy, _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(-13997i, 17952i, 17388i)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_0.x, u_input.a), global0.b.yyw))));
    var var_1 = Struct_1(vec3<u32>(~global0.a.x, ~global0.a.x, ~_wgslsmith_div_u32(global0.a.x, 4294967295u)) & ~(~countOneBits(vec3<u32>(4294967295u, 4294967295u, 4294967295u))), vec4<i32>(_wgslsmith_mult_i32(1i, ~abs(2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(global3[_wgslsmith_index_u32(global0.a.x, 24u)], vec2<i32>(-39010i, u_input.a))), -u_input.b.zz), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-u_input.a, -16514i), arg_0.x), _wgslsmith_mod_i32(arg_0.x, ~global0.b.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, 416f) * global0.c) + _wgslsmith_f_op_vec2_f32(round(global0.c))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0.c))))));
    return Struct_1(vec3<u32>(5817u, 4294967295u, ~(~(~global0.a.x))), vec4<i32>(var_1.b.x, -min(2147483647i, ~var_1.b.x), u_input.a, abs(var_0.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(720f, -1000f))))));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(countOneBits(abs(-reverseBits(vec4<i32>(7577i, -3693i, -1i, u_input.a)))));
    let var_1 = vec4<u32>(abs(0u) & abs(max(26876u >> (global0.a.x % 32u), ~54604u)), var_0.a.x, global0.a.x, var_0.a.x ^ abs(global0.a.x));
    var var_2 = global0.a.x <= (0u | ((abs(5338u) ^ ~global0.a.x) << (~var_1.x % 32u)));
    global1 = global0.b.x;
    global3 = array<vec2<i32>, 24>();
    return func_2(vec4<i32>(abs(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_mult_i32(-2147483647i, 0i), _wgslsmith_dot_vec3_i32(var_0.b.xyw, var_0.b.xxz))), global0.b.x, 22260i, select(-_wgslsmith_dot_vec4_i32(global0.b, global0.b), (u_input.b.x << (global0.a.x % 32u)) & select(0i, var_0.b.x, false), (77566u <= var_1.x) != true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = reverseBits(_wgslsmith_mult_i32(global0.b.x, 42112i) << (0u % 32u));
    let var_0 = func_1();
    let var_1 = select(_wgslsmith_div_vec4_i32(vec4<i32>(max(_wgslsmith_div_i32(33503i, var_0.b.x), -9565i), ~1i, firstTrailingBit(global0.b.x), (-2147483647i >> (global0.a.x % 32u)) | _wgslsmith_mod_i32(-49378i, 9081i)), min(~(~vec4<i32>(global0.b.x, -1i, global0.b.x, 65509i)), ~(-vec4<i32>(-2147483647i, var_0.b.x, var_0.b.x, var_0.b.x)))), var_0.b, true);
    var var_2 = Struct_1(~select(reverseBits(~global0.a), ~_wgslsmith_clamp_vec3_u32(global0.a, vec3<u32>(0u, var_0.a.x, 0u), vec3<u32>(4294967295u, 17705u, 13102u)), vec3<bool>(true, true, true)), vec4<i32>(_wgslsmith_add_i32(global0.b.x, -1i), func_1().b.x, ~(abs(u_input.b.x) << (~var_0.a.x % 32u)), -var_1.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.c))));
    var var_3 = -152f;
    var var_4 = vec3<bool>(true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.c.x * _wgslsmith_f_op_f32(trunc(-586f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1808f, var_2.c.x, -342f)))));
}

