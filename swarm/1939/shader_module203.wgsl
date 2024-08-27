struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<i32>(2147483647i, -65594i, 3009i, 4619i), vec3<f32>(1672f, 1569f, 521f)), Struct_1(vec4<i32>(28871i, 1i, -40993i, -35068i), vec3<f32>(-451f, 243f, -1000f)), Struct_1(vec4<i32>(18090i, 2147483647i, 16244i, 44782i), vec3<f32>(1039f, -1049f, 902f)), Struct_1(vec4<i32>(-1i, 2147483647i, 62794i, 27289i), vec3<f32>(-517f, -670f, -448f)), Struct_1(vec4<i32>(28740i, 0i, 13672i, 609i), vec3<f32>(-345f, -391f, -1552f)), Struct_1(vec4<i32>(72158i, 1i, 0i, 1i), vec3<f32>(642f, 825f, 1564f)), Struct_1(vec4<i32>(-13952i, 0i, -10128i, -26075i), vec3<f32>(1448f, 1000f, 280f)), Struct_1(vec4<i32>(-21883i, 31910i, -1i, 16214i), vec3<f32>(108f, 1151f, 900f)), Struct_1(vec4<i32>(-13366i, -30621i, -1i, i32(-2147483648)), vec3<f32>(-1754f, -596f, -1095f)), Struct_1(vec4<i32>(-21606i, i32(-2147483648), 0i, 18845i), vec3<f32>(886f, -161f, 132f)), Struct_1(vec4<i32>(33585i, 0i, i32(-2147483648), 8073i), vec3<f32>(213f, -1218f, 1549f)), Struct_1(vec4<i32>(-15501i, 1i, 21431i, -30058i), vec3<f32>(-138f, -1000f, -256f)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 19509i), vec3<f32>(763f, -565f, -806f)), Struct_1(vec4<i32>(-28650i, -1i, 0i, 8801i), vec3<f32>(893f, 1925f, -648f)), Struct_1(vec4<i32>(1i, 1i, 14011i, -9473i), vec3<f32>(-569f, -208f, 497f)), Struct_1(vec4<i32>(-59107i, 2147483647i, -12713i, 9957i), vec3<f32>(1043f, -298f, -362f)), Struct_1(vec4<i32>(0i, 40796i, 15095i, i32(-2147483648)), vec3<f32>(368f, -914f, -481f)), Struct_1(vec4<i32>(0i, -43088i, 0i, 46371i), vec3<f32>(-512f, -275f, 244f)), Struct_1(vec4<i32>(1i, -40482i, -1i, 71298i), vec3<f32>(-885f, 201f, -379f)), Struct_1(vec4<i32>(44886i, 0i, -30837i, i32(-2147483648)), vec3<f32>(-281f, 764f, 314f)), Struct_1(vec4<i32>(1i, i32(-2147483648), 2147483647i, -31273i), vec3<f32>(1000f, -172f, -1039f)), Struct_1(vec4<i32>(-1i, 1i, -56626i, 16904i), vec3<f32>(1785f, -107f, -1154f)), Struct_1(vec4<i32>(2147483647i, 182i, 3985i, 1i), vec3<f32>(889f, 815f, -2401f)));

var<private> global2: array<Struct_1, 29>;

var<private> global3: Struct_1 = Struct_1(vec4<i32>(-15486i, 35185i, -1i, i32(-2147483648)), vec3<f32>(-615f, -982f, 114f));

var<private> global4: Struct_1 = Struct_1(vec4<i32>(17484i, 2147483647i, -8732i, 0i), vec3<f32>(200f, 285f, -475f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, 910f, 1101f, global3.b.x) - vec4<f32>(global3.b.x, global4.b.x, global3.b.x, global4.b.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, global4.b.x, global3.b.x, -352f) * vec4<f32>(global4.b.x, -1018f, global4.b.x, global3.b.x)))), false))), -_wgslsmith_mod_i32(-14977i, select(global4.a.x, ~global4.a.x, any(vec2<bool>(false, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global3.b.x, -1721f), -392f, _wgslsmith_f_op_f32(-262f - global4.b.x), _wgslsmith_f_op_f32(trunc(global3.b.x))))), global3.b.x, u_input.a.ww ^ vec2<u32>(44237u, _wgslsmith_sub_u32(u_input.b, _wgslsmith_add_u32(0u, u_input.b))));
}

