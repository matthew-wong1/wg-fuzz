struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(-2262f, -433f, -767f, -1446f, 1771f, -683f, 1758f, -552f, 1000f, -1256f, 113f, 1668f, 778f, -1439f, 279f, -1000f, -740f, 1620f, 692f, -565f, -983f, -354f, -1000f, 298f, 835f, -1035f, -1484f, -1531f, -1727f);

var<private> global1: array<vec2<u32>, 16>;

var<private> global2: vec2<f32> = vec2<f32>(-1354f, -333f);

var<private> global3: Struct_1 = Struct_1(vec2<bool>(true, false), vec4<i32>(-1127i, 0i, -35471i, -34991i));

var<private> global4: vec2<u32> = vec2<u32>(76150u, 4294967295u);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = select(any(!(!vec3<bool>(arg_1.a.x, arg_3.a.x, false))), true, arg_2.a.x);
    global3 = Struct_1(!vec2<bool>(arg_1.a.x, all(arg_3.a)), ~arg_1.b);
    let var_1 = arg_1;
    let var_2 = vec4<i32>(3344i, _wgslsmith_dot_vec3_i32(max(u_input.c, _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, arg_1.b.x, 1i), vec3<i32>(arg_1.b.x, 0i, arg_2.b.x)), vec3<i32>(24451i, arg_2.b.x, 1i), vec3<i32>(-7745i, 2147483647i, arg_1.b.x))), vec3<i32>(-abs(arg_2.b.x), _wgslsmith_mult_i32(arg_2.b.x, 321i) >> (min(u_input.b, 21585u) % 32u), ~(-1i))), -37893i, -_wgslsmith_mult_i32(arg_3.b.x, 0i) & _wgslsmith_dot_vec2_i32(arg_2.b.wx, global3.b.wx));
    let var_3 = Struct_1(!select(!arg_3.a, !select(vec2<bool>(global3.a.x, true), vec2<bool>(true, true), arg_3.a.x), arg_2.a.x), max(~(abs(vec4<i32>(u_input.c.x, global3.b.x, 1i, var_2.x)) | global3.b), -vec4<i32>(arg_2.b.x, -55318i, var_1.b.x, -10300i) & (vec4<i32>(arg_3.b.x, 24372i, u_input.c.x, 1i) & ~vec4<i32>(global3.b.x, var_1.b.x, global3.b.x, global3.b.x))));
    return select((~(4294967295u << (u_input.b % 32u)) < u_input.b) | true, any(vec3<bool>(arg_2.a.x, !(!arg_3.a.x), (var_2.x ^ -68497i) > firstLeadingBit(arg_2.b.x))), select(true, all(arg_3.a), var_3.a.x));
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    let var_1 = vec2<bool>(!(func_3(global3.a.x, Struct_1(global3.a, vec4<i32>(22167i, -1i, u_input.a, u_input.a)), Struct_1(global3.a, global3.b), Struct_1(global3.a, vec4<i32>(2147483647i, -26633i, global3.b.x, u_input.c.x))) & global3.a.x), global3.a.x);
    var var_2 = vec4<bool>(global3.a.x, false | any(select(vec2<bool>(true, true), vec2<bool>(var_1.x, false), true)), !select(false, global3.a.x, true), global3.a.x);
    global0 = array<f32, 29>();
    let var_3 = Struct_1(vec2<bool>(global4.x >= 1u, all(vec4<bool>(var_1.x, select(true, global3.a.x, var_2.x), true, var_1.x))), vec4<i32>(1i, _wgslsmith_clamp_i32(u_input.a, -1i, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-1i, 2721i, global3.b.x)), -vec3<i32>(u_input.a, -1i, -4288i))), ~(-max(-30539i, -59549i)), _wgslsmith_mult_i32(reverseBits(~u_input.c.x), -_wgslsmith_div_i32(-22284i, u_input.a))));
    return var_3;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32) -> f32 {
    var var_0 = func_2();
    var var_1 = arg_1;
    var_1 = arg_1;
    global4 = ~(global1[_wgslsmith_index_u32(min(~121541u, global4.x), 16u)] >> (firstTrailingBit(~(~global1[_wgslsmith_index_u32(4294967295u, 16u)])) % vec2<u32>(32u)));
    global1 = array<vec2<u32>, 16>();
    return _wgslsmith_f_op_f32(min(1029f, arg_0.x));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(global4.x, 29u)];
    var var_1 = Struct_1(func_2().a, min(arg_1.b, ~global3.b));
    var var_2 = vec3<i32>(_wgslsmith_div_i32(-2147483647i, var_1.b.x << (reverseBits(~0u) % 32u)), ~abs(1i), global3.b.x);
    let var_3 = true;
    global3 = arg_1;
    return Struct_1(func_2().a, select(~var_1.b, ~_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b.x, var_1.b.x, var_1.b.x, arg_1.b.x), vec4<i32>(-2147483647i, var_1.b.x, -1i, 39628i) >> (vec4<u32>(0u, 1851u, u_input.d.x, global4.x) % vec4<u32>(32u))), any(!select(vec4<bool>(global3.a.x, true, true, global3.a.x), vec4<bool>(global3.a.x, arg_1.a.x, global3.a.x, var_3), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 29u)], 663f, -3084f), Struct_1(global3.a, vec4<i32>(u_input.c.x, 2147483647i, -22939i, -5353i)), -2147483647i))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<f32>(-347f, global2.x, -419f), Struct_1(vec2<bool>(true, true), vec4<i32>(u_input.c.x, global3.b.x, -1i, -1i)), -2147483647i)) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(87599u, 29u)] + global2.x)), global2.x))), Struct_1(select(!vec2<bool>(global3.a.x, true), vec2<bool>(func_3(true, Struct_1(vec2<bool>(true, false), global3.b), Struct_1(global3.a, global3.b), Struct_1(vec2<bool>(true, false), global3.b)), !global3.a.x), global3.a.x), global3.b));
    var var_1 = firstTrailingBit(u_input.d.x);
    var_1 = u_input.d.x;
    global1 = array<vec2<u32>, 16>();
    var_1 = ~(~global4.x);
    global4 = _wgslsmith_add_vec2_u32(~(vec2<u32>(~26642u, select(10692u, 27930u, true)) & global1[_wgslsmith_index_u32(~4294967295u, 16u)]), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d.x, 1u), 16u)]);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 29u)]), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(51743u, 29u)])), 531f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(1258f)), _wgslsmith_f_op_f32(f32(-1f) * -717f), 342f, global2.x) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -1000f, 1268f, global0[_wgslsmith_index_u32(u_input.b, 29u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(13971u, 29u)], global2.x, -389f, 1000f)))))));
    let var_3 = select(select(!vec3<bool>(true, !global3.a.x, true), select(select(!vec3<bool>(false, global3.a.x, true), vec3<bool>(global3.a.x, var_0.a.x, global3.a.x), select(vec3<bool>(var_0.a.x, var_0.a.x, true), vec3<bool>(var_0.a.x, global3.a.x, var_0.a.x), true)), select(vec3<bool>(true, global3.a.x, var_0.a.x), select(vec3<bool>(true, global3.a.x, true), vec3<bool>(global3.a.x, false, var_0.a.x), global3.a.x), vec3<bool>(true, false, true)), var_0.a.x), !vec3<bool>(any(vec3<bool>(true, var_0.a.x, false)), true, false)), !(!(!(!vec3<bool>(var_0.a.x, false, global3.a.x)))), !(all(select(vec3<bool>(global3.a.x, global3.a.x, global3.a.x), vec3<bool>(true, true, false), var_0.a.x)) && (-714f < _wgslsmith_f_op_f32(-var_2.x))));
    var var_4 = func_2().a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, vec3<f32>(global0[_wgslsmith_index_u32(abs(1u), 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-518f * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<f32>(var_2.x, var_2.x, 666f), Struct_1(var_0.a, var_0.b), var_0.b.x))) - -335f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstLeadingBit(global4.x), 29u)] - _wgslsmith_f_op_f32(-178f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(41062u, 29u)]))))), reverseBits(32407i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(max(-450f, -419f)), global0[_wgslsmith_index_u32(max(u_input.d.x, u_input.b), 29u)], _wgslsmith_f_op_f32(-586f + global2.x)) - vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-1442f + -1745f), -664f, -334f))));
}

