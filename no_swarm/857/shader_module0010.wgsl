struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-694f, 1399f, -796f, -1197f), 4294967295u);

var<private> global1: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false));

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: Struct_1 = Struct_1(vec4<f32>(132f, 130f, 125f, 750f), 1u);

var<private> global4: array<f32, 6> = array<f32, 6>(891f, -195f, -384f, -1000f, 610f, -2092f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.a.x, arg_1))));
    var var_1 = global2.x;
    var var_2 = true;
    global0 = arg_0;
    let var_3 = arg_0;
    return _wgslsmith_f_op_vec4_f32(-global0.a);
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(global0.a, global0.b), global0.a.x, Struct_1(global3.a, global0.b), global3.b)), vec4<f32>(-493f, global0.a.x, 771f, 328f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(351f, 1243f, global4[_wgslsmith_index_u32(global0.b, 6u)], global4[_wgslsmith_index_u32(0u, 6u)])) + global0.a)))), ~(~27023u));
    global0 = Struct_1(vec4<f32>(1889f, -1000f, global3.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1330f, global4[_wgslsmith_index_u32(u_input.b.x, 6u)])))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1218f))))))), u_input.c);
    global2 = vec2<bool>(false, select(false, false, global2.x));
    global2 = select(!(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), true))), !vec2<bool>((u_input.a == 2147483647i) | false, all(vec4<bool>(global2.x, global2.x, true, false)) & true), select(vec2<bool>(global2.x, false), select(vec2<bool>(!global2.x, !global2.x), vec2<bool>(false, global2.x), vec2<bool>(global3.b != 7921u, all(vec4<bool>(global2.x, false, false, global2.x)))), select(vec2<bool>(all(vec2<bool>(global2.x, global2.x)), all(global1[_wgslsmith_index_u32(u_input.b.x, 12u)])), select(!vec2<bool>(true, global2.x), vec2<bool>(true, true), !vec2<bool>(global2.x, global2.x)), global2.x == !global2.x)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, global0.a.x, global4[_wgslsmith_index_u32(4294967295u, 6u)], 188f) - vec4<f32>(global3.a.x, -302f, -658f, -1463f)), _wgslsmith_f_op_vec4_f32(global0.a - global3.a))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(global3.b, 6u)])), _wgslsmith_div_f32(global3.a.x, global0.a.x), global0.a.x, global4[_wgslsmith_index_u32(global0.b, 6u)]))), _wgslsmith_mod_u32(global3.b, ((4294967295u | global0.b) & ~59067u) ^ 1u));
    return Struct_1(vec4<f32>(-546f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a.x, 1153f) - -303f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global3.a.x)))))), global0.a.x), ~global0.b);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_0.a)) - _wgslsmith_f_op_vec4_f32(-arg_3.a)))), 80015u >> (~global3.b % 32u));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -280f));
    var var_1 = func_2();
    let var_2 = 0i << (var_1.b % 32u);
    global1 = array<vec4<bool>, 12>();
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    global3 = arg_0;
    global4 = array<f32, 6>();
    var var_0 = vec2<bool>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)) > global4[_wgslsmith_index_u32(~select(~51468u, firstLeadingBit(u_input.c), any(vec4<bool>(global2.x, global2.x, false, false))), 6u)]);
    global1 = array<vec4<bool>, 12>();
    var var_1 = Struct_1(arg_0.a, global0.b >> ((~8634u ^ ~(26152u | arg_0.b)) % 32u));
    return !(!(!vec3<bool>(!global2.x, all(vec2<bool>(global2.x, global2.x)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<bool>(any(vec3<bool>(global2.x, all(!vec3<bool>(false, false, global2.x)), any(!global1[_wgslsmith_index_u32(1u, 12u)]))), any(select(select(vec3<bool>(true, global2.x, false), select(vec3<bool>(global2.x, true, false), vec3<bool>(global2.x, global2.x, global2.x), false), !global2.x), func_4(func_1(Struct_1(global3.a, global0.b), 987f, Struct_1(vec4<f32>(-972f, 165f, 229f, global4[_wgslsmith_index_u32(u_input.c, 6u)]), global0.b), Struct_1(vec4<f32>(global3.a.x, 1169f, -1332f, global3.a.x), 4294967295u))), !(!global2.x))));
    let x = u_input.a;
    s_output = StorageBuffer((-min(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(0i, 2147483647i, u_input.a, 0i)) | vec4<i32>(-u_input.a, ~(-26564i), u_input.a, min(-18866i, u_input.a))) << (vec4<u32>(~countOneBits(14163u), ~max(u_input.b.x, 36131u), min(0u, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), global0.b) % vec4<u32>(32u)), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(4294967295u, 4294967295u)), 1909u, u_input.c, ~global0.b), firstLeadingBit(vec4<u32>(global0.b, 12610u, global3.b, 76582u) & vec4<u32>(global3.b, 1u, 17973u, 4294967295u)))));
}

