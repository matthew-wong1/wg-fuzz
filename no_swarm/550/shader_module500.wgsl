struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-62144i, 3512i);

var<private> global1: array<Struct_1, 20>;

var<private> global2: array<f32, 2>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: i32) -> u32 {
    global2 = array<f32, 2>();
    let var_0 = ~(-9526i);
    global2 = array<f32, 2>();
    var var_1 = arg_1.b.b;
    global2 = array<f32, 2>();
    return 10113u;
}

fn func_1() -> vec3<u32> {
    let var_0 = Struct_2(u_input.d.yzx, Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(312f * global2[_wgslsmith_index_u32(u_input.a.x, 2u)]), _wgslsmith_div_f32(936f, global2[_wgslsmith_index_u32(u_input.c.x, 2u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 2u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(116f, -1028f, 1331f))))), global2[_wgslsmith_index_u32(func_2(u_input.d, Struct_2(vec3<u32>(4294967295u, u_input.a.x, 0u), Struct_1(vec3<f32>(-427f, global2[_wgslsmith_index_u32(1563u, 2u)], 416f), -1000f, vec2<u32>(58600u, 66547u), global0.x), global1[_wgslsmith_index_u32(u_input.c.x, 20u)], abs(11146i)), -_wgslsmith_div_i32(20234i, global0.x)), 2u)], vec2<u32>(_wgslsmith_div_u32(0u, 60796u) | ~u_input.d.x, 1u), 0i), global1[_wgslsmith_index_u32(18590u, 20u)], global0.x);
    global1 = array<Struct_1, 20>();
    let var_1 = (var_0.c.a.x <= 1f) | ((1822f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_0.b.b))) & false);
    var var_2 = Struct_3(vec4<i32>(-var_0.d, _wgslsmith_clamp_i32(select(1i, -var_0.d, var_1), var_0.d, reverseBits(firstLeadingBit(-7957i))), global0.x, abs(~(~var_0.b.d))));
    global2 = array<f32, 2>();
    return ~(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 31775u, 10141u), max(vec3<u32>(u_input.c.x, 62924u, var_0.b.c.x), vec3<u32>(var_0.b.c.x, u_input.c.x, 12999u))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, var_0.c.c.x, u_input.a.x) << ((u_input.b | vec3<u32>(1u, 77982u, 45676u)) % vec3<u32>(32u)), vec3<u32>(22355u & var_0.c.c.x, _wgslsmith_mod_u32(1u, 19083u), var_0.b.c.x), min(countOneBits(vec3<u32>(1u, u_input.a.x, 4294967295u)), abs(vec3<u32>(u_input.d.x, 29934u, var_0.c.c.x)))) % vec3<u32>(32u)));
}

fn func_3(arg_0: Struct_3) -> vec2<i32> {
    let var_0 = select(arg_0.a.wx, vec2<i32>(-18752i << ((92726u >> (u_input.d.x % 32u)) % 32u), abs(1512i)), !select(vec2<bool>(any(vec3<bool>(false, false, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true))));
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.b, u_input.a.yzy), 20u)];
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-861f))))));
    return _wgslsmith_mod_vec2_i32(select((arg_0.a.zy | var_0) >> (~vec2<u32>(0u, var_1.c.x) % vec2<u32>(32u)), vec2<i32>(firstLeadingBit(2147483647i), firstTrailingBit(global0.x)), all(vec2<bool>(true, true)) || true) | var_0, _wgslsmith_sub_vec2_i32(countOneBits(-firstLeadingBit(vec2<i32>(33124i, var_1.d))), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(arg_0.a, arg_0.a), vec4<i32>(var_0.x, arg_0.a.x, 0i, var_0.x)), ~_wgslsmith_dot_vec2_i32(arg_0.a.yw, arg_0.a.xz))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 2>();
    var var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(!all(vec4<bool>(true, true, false, true)), ~u_input.c.x == 0u, true), false);
    global2 = array<f32, 2>();
    let var_1 = ~func_1();
    global0 = func_3(Struct_3(vec4<i32>(~(i32(-1i) * -1i), abs(max(global0.x, -17360i)), _wgslsmith_add_i32(global0.x, _wgslsmith_mod_i32(1i, 7161i)), -11821i)));
    let var_2 = vec3<bool>(var_0.x, !(var_0.x != any(select(vec2<bool>(false, true), var_0.yx, false))), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, global0.x, -4930i, _wgslsmith_add_i32(1i ^ global0.x, 1i)), countOneBits(-vec4<i32>(-1i, global0.x, 44266i, 0i) << (select(vec4<u32>(var_1.x, var_1.x, 5430u, 1u), vec4<u32>(0u, 34918u, 42355u, 62771u), vec4<bool>(var_0.x, true, var_0.x, true)) % vec4<u32>(32u)))), 3563i, vec4<f32>(-361f, _wgslsmith_f_op_f32(-161f + global2[_wgslsmith_index_u32(select(var_1.x << (u_input.a.x % 32u), u_input.b.x, var_2.x | false), 2u)]), -1043f, 516f), abs(vec4<i32>(-2147483647i, select(global0.x, 2147483647i, true), ~firstTrailingBit(-20102i), -1i)), ~vec4<i32>(0i, global0.x << (var_1.x % 32u), 19052i, ~0i) & vec4<i32>(global0.x, _wgslsmith_dot_vec4_i32(min(vec4<i32>(global0.x, global0.x, 0i, global0.x), vec4<i32>(global0.x, 4098i, global0.x, -62569i)), vec4<i32>(global0.x, global0.x, global0.x, -50782i)), global0.x, global0.x));
}

