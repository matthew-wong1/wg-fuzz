struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(16113u, 17455u, 51267u, 35717u);

var<private> global1: array<i32, 24> = array<i32, 24>(-51626i, -1209i, 0i, -8111i, 106489i, -4228i, -49889i, 1i, -5434i, 42945i, 1i, -3643i, -42122i, -27226i, 34747i, 1i, 1015i, 0i, -11961i, -1i, 1i, 5184i, 2147483647i, i32(-2147483648));

var<private> global2: Struct_1 = Struct_1(88426i);

var<private> global3: vec2<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>) -> Struct_1 {
    return Struct_1(~(-u_input.a.x));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<bool> {
    global2 = arg_1;
    var var_0 = vec3<i32>(-29137i, -42862i, ~global2.a);
    var var_1 = _wgslsmith_mult_vec4_i32(reverseBits((-vec4<i32>(2147483647i, global2.a, -2147483647i, 29306i) | vec4<i32>(global1[_wgslsmith_index_u32(global0.x, 24u)], 1i, 1957i, global2.a)) & (abs(vec4<i32>(u_input.a.x, -1277i, var_0.x, -1i)) & countOneBits(vec4<i32>(2147483647i, -6228i, -65989i, var_0.x)))), max(_wgslsmith_clamp_vec4_i32(~(vec4<i32>(-10646i, -27874i, -13799i, 1i) << (vec4<u32>(global0.x, 26317u, 51399u, 1u) % vec4<u32>(32u))), vec4<i32>(arg_1.a, -2147483647i, -2147483647i, -global2.a), vec4<i32>(53122i, ~global1[_wgslsmith_index_u32(4294967295u, 24u)], -3570i, firstTrailingBit(2147483647i))), -((vec4<i32>(-1i, global1[_wgslsmith_index_u32(global0.x, 24u)], var_0.x, 1i) >> (arg_0 % vec4<u32>(32u))) << (min(arg_0, arg_0) % vec4<u32>(32u)))));
    var_1 = ~vec4<i32>(select(-arg_1.a, 52867i, select(all(vec4<bool>(true, false, false, false)), false, true)), var_1.x, _wgslsmith_dot_vec2_i32(select(min(arg_2.xz, vec2<i32>(global1[_wgslsmith_index_u32(global0.x, 24u)], arg_1.a)), _wgslsmith_mult_vec2_i32(u_input.a.zz, arg_2.zx), select(vec2<bool>(true, true), vec2<bool>(false, true), false)), abs(_wgslsmith_add_vec2_i32(var_1.xx, var_1.yz))), arg_1.a);
    var var_2 = -465f;
    return !vec4<bool>(all(vec3<bool>(true, true, true)), any(vec4<bool>(false, arg_0.x > arg_0.x, false, -41504i != arg_1.a)), all(vec2<bool>(false, true)) & true, ((arg_2.x >> (arg_0.x % 32u)) <= 36850i) && any(vec3<bool>(false, false, true)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = all(!func_3(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 0u, 54846u, 1u), vec4<u32>(4294967295u, global0.x, 4294967295u, global0.x), vec4<u32>(global0.x, 94385u, 40166u, 4294967295u))), func_2(select(vec3<bool>(true, true, arg_0.x), vec3<bool>(true, true, true), vec3<bool>(arg_0.x, true, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(625f, global3.x, 530f, 988f) - vec4<f32>(741f, -1918f, -1065f, -1000f))), select(vec3<i32>(-17378i, u_input.a.x, global1[_wgslsmith_index_u32(global0.x, 24u)]), abs(vec3<i32>(-1i, -34019i, 171i)), vec3<bool>(true, true, arg_0.x))));
    global3 = vec2<f32>(global3.x, 340f);
    let var_1 = 1f;
    global3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(834f, _wgslsmith_f_op_f32(2186f - global3.x)));
    var var_2 = _wgslsmith_f_op_f32(step(var_1, 634f));
    return func_2(!select(select(select(vec3<bool>(var_0, true, var_0), vec3<bool>(false, true, true), true), vec3<bool>(true, false, false), global3.x < global3.x), vec3<bool>(all(vec4<bool>(arg_0.x, arg_0.x, var_0, true)), true, arg_0.x & false), all(!vec4<bool>(var_0, var_0, true, var_0))), vec4<f32>(_wgslsmith_f_op_f32(1212f + _wgslsmith_f_op_f32(round(-165f))), -495f, var_1, global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(~firstLeadingBit(vec2<i32>(51063i, global2.a)), vec2<i32>(-1i) * -u_input.a.yz)));
    var var_0 = func_1(vec2<bool>(true, ~(~97728u) != (_wgslsmith_mod_u32(global0.x, global0.x) | _wgslsmith_mod_u32(16799u, 44309u))), Struct_1(global1[_wgslsmith_index_u32(global0.x, 24u)]));
    global0 = ~max(vec4<u32>(global0.x, global0.x, 0u, (4294967295u & global0.x) | _wgslsmith_clamp_u32(57815u, 56923u, global0.x)), firstTrailingBit(~vec4<u32>(1u, 90821u, 23665u, 0u) & vec4<u32>(global0.x, global0.x, 21495u, 30110u)));
    global3 = vec2<f32>(_wgslsmith_f_op_f32(floor(global3.x)), 706f);
    var var_1 = vec3<bool>((all(func_3(vec4<u32>(41940u, global0.x, global0.x, global0.x), Struct_1(0i), u_input.a)) || true) | (-(~49139i) <= _wgslsmith_clamp_i32(max(2147483647i, global1[_wgslsmith_index_u32(global0.x, 24u)]), -u_input.a.x, -global1[_wgslsmith_index_u32(16221u, 24u)])), func_3(~(~(vec4<u32>(global0.x, 61856u, global0.x, global0.x) << (vec4<u32>(global0.x, 113525u, 30883u, global0.x) % vec4<u32>(32u)))), func_2(vec3<bool>(true, global0.x != global0.x, true), vec4<f32>(_wgslsmith_div_f32(global3.x, -1000f), global3.x, -796f, _wgslsmith_f_op_f32(444f * 275f))), select(u_input.a, u_input.a, vec3<bool>(var_0.a <= global1[_wgslsmith_index_u32(16237u, 24u)], true, select(false, true, false)))).x, false);
    let var_2 = func_1(vec2<bool>(!any(!var_1.zz), func_3(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, global0.x, 0u, 40373u), vec4<u32>(15136u, 0u, 0u, 0u)), vec4<u32>(29734u, 19898u, 25244u, 4294967295u)), func_1(var_1.zz, func_2(vec3<bool>(false, var_1.x, false), vec4<f32>(-130f, global3.x, global3.x, -172f))), u_input.a).x), Struct_1(-37028i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(global3.x, 279f)), ~(~((global0.x >> (1u % 32u)) & ~global0.x)), -_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 13509i, 0i, -5661i), ~vec4<i32>(-1i, 2147483647i, -27478i, global2.a)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 0i, global1[_wgslsmith_index_u32(global0.x, 24u)], 17676i), vec4<i32>(var_2.a, -2147483647i, var_2.a, global1[_wgslsmith_index_u32(global0.x, 24u)]))));
}

