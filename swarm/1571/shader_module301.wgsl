struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 31> = array<bool, 31>(true, false, true, true, false, true, true, false, true, true, false, false, false, false, true, true, false, true, false, false, true, false, true, true, false, false, true, false, false, true, false);

var<private> global2: vec3<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    var var_0 = false;
    var_0 = true || any(vec2<bool>(global0.a.x, !(global1[_wgslsmith_index_u32(global0.c, 31u)] || true)));
    var_0 = select(all(vec3<bool>(any(select(global0.b, vec3<bool>(global0.b.x, false, false), true)), false, true)), true, _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.x * global2.x)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1140f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(max(global2.x, global2.x)))));
    let var_1 = vec2<i32>(~u_input.a, ~(-u_input.a) >> (min(u_input.c, ~1u) % 32u));
    global0 = Struct_1(!vec2<bool>(global0.a.x, global1[_wgslsmith_index_u32(min(global0.c << (global0.c % 32u), _wgslsmith_add_u32(global0.c, 1u)), 31u)]), !(!global0.b), select(countOneBits(21589u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 0u, global0.c), vec4<u32>(_wgslsmith_mod_u32(global0.c, u_input.b), ~global0.c, ~0u, ~u_input.c)), true));
    return global0.a.x;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: vec3<bool>) -> f32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_sub_i32(-arg_2, -reverseBits(u_input.a));
    global0 = Struct_1(vec2<bool>(any(arg_1.b), firstTrailingBit(u_input.c) < 1u), vec3<bool>(var_0.a.x, global1[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(u_input.b, global0.c)), 31u)], false), arg_1.c);
    let var_2 = reverseBits(vec4<i32>(-(~arg_2), firstTrailingBit(_wgslsmith_mult_i32(2347i, u_input.a)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_2, -16676i, 1i, 48076i)), vec4<i32>(u_input.a, u_input.a, arg_2, arg_2) | vec4<i32>(2147483647i, 0i, arg_2, u_input.a)), firstTrailingBit(_wgslsmith_sub_i32(arg_2, -1629i)))) >> (vec4<u32>(~min(select(39464u, 1u, global0.a.x), 0u), 15885u, ~24898u, _wgslsmith_add_u32(~u_input.c, 0u)) % vec4<u32>(32u));
    var_0 = arg_1;
    return global2.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<bool>) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1909f, _wgslsmith_f_op_f32(960f - global2.x), -1685f, global2.x), vec4<f32>(_wgslsmith_div_f32(global2.x, global2.x), -901f, _wgslsmith_f_op_f32(min(-1883f, 726f)), 1000f))), Struct_1(vec2<bool>((global0.c << (global0.c % 32u)) >= _wgslsmith_add_u32(1u, global0.c), false || (global1[_wgslsmith_index_u32(4294967295u, 31u)] && global0.a.x)), select(arg_1.ywz, arg_1.www, select(global0.b, !global0.b, select(arg_1.x, false, arg_1.x))), _wgslsmith_mod_u32(~1u, ~u_input.b) | global0.c), 30869u, _wgslsmith_f_op_f32(-global2.x), ~(-188i));
    global0 = var_0.b;
    global1 = array<bool, 31>();
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(func_4(false, Struct_1(select(global0.b.xx, vec2<bool>(false, true), vec2<bool>(false, var_0.b.b.x)), global0.b, reverseBits(10217u)), arg_0.x, vec3<bool>(func_3(), true, any(vec2<bool>(true, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - -289f)), -532f, var_0.a.x), Struct_1(arg_1.xy, vec3<bool>(arg_1.x, _wgslsmith_f_op_f32(global2.x + var_0.a.x) <= _wgslsmith_f_op_f32(f32(-1f) * -1379f), true), ~17436u), ~0u, -565f, u_input.a);
    global0 = Struct_1(global0.a, vec3<bool>(func_3(), true, false), firstTrailingBit(_wgslsmith_mult_u32(select(firstTrailingBit(1u), firstTrailingBit(u_input.b), true), ~u_input.c)));
    return !var_0.b.b.x;
}

fn func_1(arg_0: f32) -> bool {
    global2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.x, -1000f, 1721f)))))))));
    let var_0 = vec4<bool>(any(global0.b), ~(~(~global0.c)) < 12366u, false, any(select(vec4<bool>(!global0.b.x, func_2(vec3<i32>(-62112i, 31539i, u_input.a), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 31u)], global1[_wgslsmith_index_u32(global0.c, 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)])), true, false), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 31u)], global1[_wgslsmith_index_u32(0u, 31u)], false, global1[_wgslsmith_index_u32(global0.c, 31u)]), vec4<bool>(global1[_wgslsmith_index_u32(global0.c, 31u)], true, true, true), global0.a.x), select(vec4<bool>(global1[_wgslsmith_index_u32(global0.c, 31u)], global0.b.x, true, global0.a.x), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 31u)], false, true, global0.b.x), vec4<bool>(true, true, false, global0.a.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 31u)], global0.a.x, global1[_wgslsmith_index_u32(u_input.c, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)])), !global0.b.x))));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -449f, arg_0)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 1532f, -1017f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1899f, -531f, global2.x)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_4(var_0.x, Struct_1(vec2<bool>(false, global1[_wgslsmith_index_u32(global0.c, 31u)]), vec3<bool>(false, false, true), 0u), -u_input.a, vec3<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 31u)]))), 605f, arg_0) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), global2.x), _wgslsmith_f_op_f32(func_4(true, Struct_1(global0.a, var_0.zxy, global0.c), _wgslsmith_clamp_i32(u_input.a, 2147483647i, u_input.a), vec3<bool>(global0.a.x, var_0.x, false))), global2.x)));
    var var_1 = Struct_1(!select(var_0.zw, !(!vec2<bool>(global1[_wgslsmith_index_u32(504u, 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)])), any(vec4<bool>(true, global0.b.x, global1[_wgslsmith_index_u32(u_input.b, 31u)], global0.a.x))), var_0.xzz, 14379u);
    let var_2 = -((firstTrailingBit(select(vec4<i32>(u_input.a, 18092i, u_input.a, u_input.a), vec4<i32>(-1i, u_input.a, u_input.a, -2988i), var_0.x)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 39135i, -2147483647i, -1i), ~vec4<i32>(-703i, 1i, -14789i, 1i))) | firstTrailingBit(vec4<i32>(u_input.a >> (1u % 32u), _wgslsmith_clamp_i32(-1i, 1i, u_input.a), ~8032i, 0i)));
    return true;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: f32) -> vec3<f32> {
    let var_0 = all(select(!vec2<bool>(arg_0, global0.a.x), !select(select(arg_1.a, global0.a, true), arg_1.b.xy, arg_0), arg_1.b.yz));
    global2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.x, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-466f, -459f)) * _wgslsmith_f_op_f32(step(global2.x, 1196f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1112f, 609f, -1000f)), vec3<f32>(arg_3, arg_3, -327f)) - vec3<f32>(_wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(global2.x - -1890f)))))));
    var var_1 = arg_1;
    let var_2 = !func_2(reverseBits(vec3<i32>(-43150i, i32(-1i) * -21899i, -1i)), !vec4<bool>(true, arg_1.b.x, global0.b.x, true));
    global0 = Struct_1(select(var_1.a, !select(vec2<bool>(arg_0, global0.a.x), select(vec2<bool>(arg_0, var_0), vec2<bool>(true, global0.b.x), var_1.a), select(global0.a, vec2<bool>(true, false), var_1.a)), true), !(!select(vec3<bool>(var_2, arg_1.b.x, false), arg_1.b, arg_1.b)), min(arg_1.c, 1u));
    return _wgslsmith_div_vec3_f32(vec3<f32>(-495f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(false, Struct_1(arg_1.b.yz, global0.b, 25964u), 1i, vec3<bool>(false, true, global1[_wgslsmith_index_u32(arg_1.c, 31u)]))), arg_3) + _wgslsmith_f_op_f32(f32(-1f) * -373f)), global2.x), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3, -790f, var_2))))), arg_3, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(329f, _wgslsmith_f_op_f32(-207f * 659f), var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1640f * -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * -772f))), 427f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x)) - _wgslsmith_div_f32(global2.x, 346f))), _wgslsmith_f_op_vec3_f32(func_5(!global1[_wgslsmith_index_u32(82366u, 31u)] || func_1(global2.x), Struct_1(!global0.b.yx, global0.b, countOneBits(1u)), vec3<i32>(u_input.a, 11092i, countOneBits(_wgslsmith_div_i32(u_input.a, -1i))), _wgslsmith_f_op_f32(-303f - global2.x)))));
    global1 = array<bool, 31>();
    let var_0 = !(!all(global0.b));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1140f, 1828f, 691f, -1961f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-756f, -989f, global2.x, 1000f) + vec4<f32>(global2.x, global2.x, 831f, global2.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-277f, 539f, global2.x, global2.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(494f, global2.x, -533f, global2.x))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -1013f, global2.x, global2.x) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, 133f, global2.x, global2.x)))))));
}

