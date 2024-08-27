struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<i32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(18507i, i32(-2147483648));

var<private> global1: array<Struct_2, 13>;

var<private> global2: i32 = 28122i;

var<private> global3: Struct_1 = Struct_1(true, vec3<bool>(true, true, true), vec4<i32>(-15769i, -7946i, 15302i, -32048i), 1u, vec2<f32>(1568f, 161f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32) -> vec2<i32> {
    var var_0 = Struct_2(firstLeadingBit(-(vec2<i32>(-1i, -65149i) << (_wgslsmith_div_vec2_u32(vec2<u32>(arg_0, arg_0), u_input.b.yy) % vec2<u32>(32u)))), -_wgslsmith_mod_vec4_i32(reverseBits(global3.c), select(_wgslsmith_sub_vec4_i32(global3.c, vec4<i32>(u_input.a, u_input.a, global3.c.x, -1i)), -global3.c, select(vec4<bool>(true, false, true, true), vec4<bool>(global3.a, global3.b.x, global3.a, global3.a), vec4<bool>(global3.a, global3.b.x, global3.b.x, true)))), vec4<i32>(1i, _wgslsmith_mod_i32(~u_input.a, ~global3.c.x), -5080i, abs(-1i)) ^ global3.c);
    var var_1 = global3.e.x;
    let var_2 = !(!vec4<bool>(!global3.a, global3.b.x & global3.b.x, global3.a, global3.a));
    let var_3 = Struct_3(!select(!vec3<bool>(global3.b.x, var_2.x, true), !(!vec3<bool>(false, global3.b.x, false)), select(var_2.xwx, select(vec3<bool>(global3.b.x, false, true), vec3<bool>(true, var_2.x, true), false), select(var_2.wyz, vec3<bool>(false, global3.a, global3.b.x), vec3<bool>(var_2.x, false, true)))), var_0.c, Struct_2(~(~global3.c.zz) << ((countOneBits(u_input.b.xy) ^ u_input.b.zx) % vec2<u32>(32u)), vec4<i32>(~countOneBits(global3.c.x), var_0.b.x, i32(-1i) * -7749i, -_wgslsmith_mult_i32(var_0.c.x, var_0.c.x)), ~abs(global3.c)), 4294967295u);
    let var_4 = any(select(vec3<bool>(select(true, select(true, true, var_3.a.x), var_2.x), var_3.a.x, global3.a), var_2.wzx, global3.b.x));
    return select(var_3.c.a, _wgslsmith_div_vec2_i32(select(vec2<i32>(328i, -72379i), vec2<i32>(17728i, var_0.c.x) ^ vec2<i32>(2064i, u_input.a), var_4), -var_3.b.zz), select(!var_3.a.yy, vec2<bool>(var_3.a.x, var_4 & true), all(!vec3<bool>(true, var_3.a.x, var_2.x)))) << (~(~(~(vec2<u32>(arg_0, arg_0) ^ u_input.b.yz))) % vec2<u32>(32u));
}

fn func_2() -> i32 {
    var var_0 = u_input.b.x & _wgslsmith_div_u32(_wgslsmith_mod_u32(global3.d, global3.d) | _wgslsmith_div_u32(4620u, select(1u, u_input.b.x, global3.b.x)), 1u);
    let var_1 = global3.c;
    global0 = -_wgslsmith_mod_vec2_i32(var_1.yy, _wgslsmith_mod_vec2_i32(~func_3(u_input.b.x), var_1.xz));
    var_0 = global3.d;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.e.x));
    return _wgslsmith_mod_i32(var_1.x, firstLeadingBit(u_input.a));
}

fn func_1(arg_0: Struct_3) -> i32 {
    let var_0 = Struct_1(!arg_0.a.x, vec3<bool>(global3.a || select(true, u_input.b.x != 26678u, global3.a != global3.b.x), arg_0.a.x, true), vec4<i32>(arg_0.c.c.x << (u_input.b.x % 32u), max(countOneBits(2147483647i >> (global3.d % 32u)), 0i), global3.c.x, ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(global3.c.x, 0i), global3.c.x)), 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global3.e, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1703f, global3.e.x) * global3.e))))));
    let var_1 = 1u;
    var var_2 = global3.e.x;
    var var_3 = arg_0.a.x;
    global2 = firstTrailingBit(var_0.c.x);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.x, global0.x) | (u_input.a ^ u_input.a), _wgslsmith_div_i32(1i, u_input.a) >> (111902u % 32u))) != func_1(Struct_3(global3.b, vec4<i32>(reverseBits(global0.x), _wgslsmith_mult_i32(global0.x, -1i), 45621i, global3.c.x << (4294967295u % 32u)), global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(u_input.b.x, 25719u)), 13u)], 95740u));
    let var_1 = select(select(!global3.b.xy, select(vec2<bool>(false, global3.e.x > global3.e.x), vec2<bool>(global3.d <= global3.d, global3.e.x < 227f), global3.b.xx), !select(true | global3.a, any(vec4<bool>(global3.a, global3.b.x, false, global3.a)), true)), global3.b.yz, all(vec4<bool>(any(vec4<bool>(global3.a, global3.b.x, global3.a, false)), global3.a, _wgslsmith_div_f32(-1363f, -447f) <= global3.e.x, true)));
    let var_2 = global1[_wgslsmith_index_u32(~u_input.b.x, 13u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec3<u32>(u_input.b.x, 54661u, 28265u)) & max(vec3<u32>(global3.d, 37819u, global3.d), abs(u_input.b))), var_2.b);
}

